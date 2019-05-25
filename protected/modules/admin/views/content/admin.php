<?php
/* @var $this ContentController */
/* @var $model Content */

$this->breadcrumbs=array(
	'Contents'=>array('index'),
	'Manage',
);

$this->menu=array(
	array('label'=>'Создать', 'url'=>array('create')),
);

?>

<h1>Управление контентом</h1>


<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'content-grid',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
		'id',
//		'lang_id',
//		'category_id',
		'title',
		'hash',
//		'description',
		/*
		'meta_tags',
		'meta_description',
		'created',
		'updated',
		'created_by',
		'image',
		*/
		array(
			'class'=>'CButtonColumn',
		),
	),
)); ?>
