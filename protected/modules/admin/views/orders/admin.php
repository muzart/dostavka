<?php
/* @var $this OrdersController */
/* @var $model Orders */

$this->breadcrumbs=array(
	'Orders'=>array('index'),
	'Manage',
);

$this->menu=array(
	array('label'=>'Создать', 'url'=>array('create')),
);

?>

<h1>Управление заказами</h1>

<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'orders-grid',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
		'id',
		'person_type',
		'fio',
		'address',
		'count',
		'tel',
		/*
		'fax',
		'email',
		'created',
		*/
		array(
			'class'=>'CButtonColumn',
		),
	),
)); ?>
