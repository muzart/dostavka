<?php

/**
 * This is the model class for table "catalog_product".
 *
 * The followings are the available columns in table 'catalog_product':
 * @property integer $id
 * @property string $name
 * @property integer $category_id
 * @property string $image
 * @property string $description
 * @property string $price
 *
 * The followings are the available model relations:
 * @property CatalogCategory $category
 */
class CatalogProduct extends CActiveRecord implements IECartPosition
{
	const IMAGE_FOLDER = '/images/products/';
	public $image_file;
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'catalog_product';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('name, category_id', 'required'),
			array('category_id', 'numerical', 'integerOnly'=>true),
			array('name', 'length', 'max'=>50),
			array('image_file', 'file', 'types'=>'jpg, png, bmp, gif', 'allowEmpty'=>'true', 'safe'=>false),
			array('image', 'length', 'max'=>100),
			array('price', 'length', 'max'=>20),
			array('description', 'safe'),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id, name, category_id, image, description, price', 'safe', 'on'=>'search'),
		);
	}

	/**
	 * @return array relational rules.
	 */
	public function relations()
	{
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
			'category' => array(self::BELONGS_TO, 'CatalogCategory', 'category_id'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
			'name' => 'Name',
			'category_id' => 'Category',
			'image' => 'Image',
			'description' => 'Description',
			'price' => 'Price',
		);
	}

	/**
	 * Retrieves a list of models based on the current search/filter conditions.
	 *
	 * Typical usecase:
	 * - Initialize the model fields with values from filter form.
	 * - Execute this method to get CActiveDataProvider instance which will filter
	 * models according to data in model fields.
	 * - Pass data provider to CGridView, CListView or any similar widget.
	 *
	 * @return CActiveDataProvider the data provider that can return the models
	 * based on the search/filter conditions.
	 */
	public function search()
	{
		// @todo Please modify the following code to remove attributes that should not be searched.

		$criteria=new CDbCriteria;

		$criteria->compare('id',$this->id);
		$criteria->compare('name',$this->name,true);
		$criteria->compare('category_id',$this->category_id);
		$criteria->compare('image',$this->image,true);
		$criteria->compare('description',$this->description,true);
		$criteria->compare('price',$this->price,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return CatalogProduct the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}

	public function getImageSrc(){
		return Yii::app()->baseUrl.self::IMAGE_FOLDER.$this->image;
	}

	public function beforeSave()
	{
		$image_file = CUploadedFile::getInstance($this,'image_file');
		if($image_file)
		{
			$this->image = time()."_product_".rand(1,999).".".$image_file->extensionName;
			$image_file->saveAs(Yii::getPathOfAlias('webroot').self::IMAGE_FOLDER.$this->image);
		}
		return parent::beforeSave();
	}


	function getId(){
		return 'Product'.$this->id;
	}

	function getPrice(){
		return $this->price;
	}


}
