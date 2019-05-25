<?php
/* @var $this CatalogCategoryController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Catalog Categories',
);

$this->menu=array(
	array('label'=>'Create CatalogCategory', 'url'=>array('create')),
	array('label'=>'Manage CatalogCategory', 'url'=>array('admin')),
);
?>

<h1>Catalog Categories</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
