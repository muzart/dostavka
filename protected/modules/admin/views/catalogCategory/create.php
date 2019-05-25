<?php
/* @var $this CatalogCategoryController */
/* @var $model CatalogCategory */

$this->breadcrumbs=array(
	'Catalog Categories'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List CatalogCategory', 'url'=>array('index')),
	array('label'=>'Manage CatalogCategory', 'url'=>array('admin')),
);
?>

<h1>Create CatalogCategory</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>