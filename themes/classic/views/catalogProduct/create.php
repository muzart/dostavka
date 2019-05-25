<?php
/* @var $this CatalogProductController */
/* @var $model CatalogProduct */

$this->breadcrumbs=array(
	'Catalog Products'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List CatalogProduct', 'url'=>array('index')),
	array('label'=>'Manage CatalogProduct', 'url'=>array('admin')),
);
?>

<h1>Create CatalogProduct</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>