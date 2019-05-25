<?php
/* @var $this CatalogProductController */
/* @var $model CatalogProduct */

$this->breadcrumbs=array(
	'Catalog Products'=>array('index'),
	$model->name,
);

$this->menu=array(
	array('label'=>'List CatalogProduct', 'url'=>array('index')),
	array('label'=>'Create CatalogProduct', 'url'=>array('create')),
	array('label'=>'Update CatalogProduct', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete CatalogProduct', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage CatalogProduct', 'url'=>array('admin')),
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
		'description',
		'price',
	),
)); ?>
