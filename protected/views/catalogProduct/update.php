<?php
/* @var $this CatalogProductController */
/* @var $model CatalogProduct */

$this->breadcrumbs=array(
	'Catalog Products'=>array('index'),
	$model->name=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'List CatalogProduct', 'url'=>array('index')),
	array('label'=>'Create CatalogProduct', 'url'=>array('create')),
	array('label'=>'View CatalogProduct', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Manage CatalogProduct', 'url'=>array('admin')),
);
?>

<h1>Update CatalogProduct <?php echo $model->id; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>