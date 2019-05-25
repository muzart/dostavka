<?php
/* @var $this CatalogProductController */
/* @var $model CatalogProduct */

$this->breadcrumbs=array(
	'Catalog Products'=>array('index'),
	'Manage',
);

$this->menu=array(
	array('label'=>'Создать', 'url'=>array('create')),
);

?>

<h1>Управление продуктами</h1>

<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'catalog-product-grid',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
		'id',
		'name',
		array(
			'name'=>'category_id',
			'value'=>'$data->category->name'
		),
		array(
			'name'=>'image',
			'value'=>'CHtml::image($data->getImageSrc(),$data->name,array("style"=>"width:100px"))',
			'type'=>'html'
		),
		'price',
		array(
			'class'=>'CButtonColumn',
		),
	),
)); ?>
