<?php
/* @var $this CatalogProductController */
/* @var $model CatalogProduct */

$this->breadcrumbs=array(
	'Catalog Products'=>array('index'),
	$model->name,
);

$this->menu=array(
	array('label'=>'Создать', 'url'=>array('create')),
	array('label'=>'Редактировать', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Удалить', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Вы уверены?')),
	array('label'=>'Управление', 'url'=>array('admin')),
	);
?>

<h1>View CatalogProduct #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'name',
		'category_id',
		'image',
		array(
			'name'=>'image',
			'value' => CHtml::image($model->getImageSrc(),$model->name,array('style'=>'height:200px')),
			'type'=>'html'
		),
		array(
			'name'=>'description',
			'type'=>'html'
		),
		'price',
	),
)); ?>
