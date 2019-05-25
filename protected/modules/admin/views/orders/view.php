<?php
/* @var $this OrdersController */
/* @var $model Orders */

$this->breadcrumbs=array(
	'Orders'=>array('index'),
	$model->id,
);

$this->menu=array(
	array('label'=>'Создать', 'url'=>array('create')),
	array('label'=>'Редактировать', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Удалить', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Вы уверены?')),
	array('label'=>'Управление', 'url'=>array('admin')),
);
?>

<h1>Просмотр заказа #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'person_type',
		'fio',
		'address',
		'count',
		'tel',
		'fax',
		'email',
		'orders'=>array(
			'name'=>'orders',
			'type'=>'html'
		),
		'created',
	),
)); ?>
<?php echo CHtml::link('Скачать договор',Yii::app()->createUrl('/admin/orders/download',array('id'=>$model->id)));?>
