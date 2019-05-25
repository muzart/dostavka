<?php

class CartController extends Controller
{

	public $layout = '//layouts/column2';

	public function filters()
	{
		return array(
			'accessControl', // perform access control for CRUD operations
			'postOnly + delete', // we only allow deletion via POST request
		);
	}

	public function accessRules(){
		return array(
			array('allow',  // allow all users to perform 'index' and 'view' actions
				'actions'=>array('index','clear','add','remove'),
				'users'=>array('*'),
			),
			array('allow',
				'actions'=>array('buy'),
				'users'=>array('@')),
			array('deny',  // deny all users
				'users'=>array('*'),
			),
		);
	}

	public function actionAdd()
	{
		if(Yii::app()->request->IsPostRequest && $_POST["id"]){
			$id = (int) $_POST["id"];
			$product = CatalogProduct::model()->findByPk($id);
			Yii::app()->shoppingCart->put($product);
		}
		$this->widget('CartWidget');
	}

	public function actionClear()
	{
		if(Yii::app()->request->isPostRequest && $_POST["clear"]){
			Yii::app()->shoppingCart->clear();
		}
		$this->widget('CartWidget');
	}

	public function actionIndex()
	{
		$positions = Yii::app()->shoppingCart->getPositions();
		$cost = Yii::app()->shoppingCart->getCost();
		$this->render('index',array(
			'positions'=>$positions,
			'cost'=>$cost
		));
	}

	public function actionBuy(){
		$model=new Orders;
		$user = User::model()->findByPk(Yii::app()->user->id);
		$profile = $user->profile;
		$model->fio = $profile->first_name.' '.$profile->last_name;
		$model->email = $user->email;
		$model->tel = $profile->tel;
		$model->count = count(Yii::app()->shoppingCart->getPositions());
		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($model);
		$model->orders = $this->getOrdersTable();
		if(isset($_POST['Orders']))
		{
			$model->attributes=$_POST['Orders'];
			if($model->save(false)){
				Yii::app()->user->setFlash('cart','Спасибо за ваш заказ. Наш менеджер скоро свяжется с вами.');
				Yii::app()->shoppingCart->clear();
				$this->redirect(array('index'));
			}
		}

		$this->render('buy',array(
			'model'=>$model,
		));
	}

	public function actionRemove()
	{
		if(Yii::app()->request->IsPostRequest && $_POST["id"]){
			$id = $_POST['id'];
			Yii::app()->shoppingCart->remove($id);
		}

		$this->widget('CartWidget');
	}

	public function getOrdersTable(){
		$positions = Yii::app()->shoppingCart->getPositions();
		$orders = '<table>
					<tr>
						<th>ID продукта </th>
						<th>Название продукта </th>
						<th>Количество </th>
						<th>По цене </th>
					</tr> ';
		foreach ($positions as $position){
			$orders .= '<tr>';
			$orders .= ' <td>'.$position->id.'</td>';
			$orders .= ' <td>'.$position->name.'</td>';
			$orders .= ' <td>'.$position->getQuantity().' шт. '.'</td>';
			$orders .= ' <td>'.$position->price.'</td>';
			$orders .= '</tr>';
		}
		$orders .= ' <tr> <td colspan="3">Общая сумма: </td><td>'. Yii::app()->shoppingCart->getCost().'</td></tr>';
		$orders .= '</table>';
		return $orders;
	}

	// Uncomment the following methods and override them if needed
	/*
	public function filters()
	{
		// return the filter configuration for this controller, e.g.:
		return array(
			'inlineFilterName',
			array(
				'class'=>'path.to.FilterClass',
				'propertyName'=>'propertyValue',
			),
		);
	}

	public function actions()
	{
		// return external action classes, e.g.:
		return array(
			'action1'=>'path.to.ActionClass',
			'action2'=>array(
				'class'=>'path.to.AnotherActionClass',
				'propertyName'=>'propertyValue',
			),
		);
	}
	*/
}