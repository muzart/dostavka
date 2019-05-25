<?php
/* @var $this CatalogCategoryController */
/* @var $model CatalogCategory */

$this->breadcrumbs=array(
	'Catalog Categories'=>array('index'),
	$model->name=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'List CatalogCategory', 'url'=>array('index')),
	array('label'=>'Create CatalogCategory', 'url'=>array('create')),
	array('label'=>'View CatalogCategory', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Manage CatalogCategory', 'url'=>array('admin')),
);
?>

<h1>Update CatalogCategory <?php echo $model->id; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>