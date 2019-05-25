<?php
/* @var $this CatalogCategoryController */
/* @var $model CatalogCategory */

$this->breadcrumbs=array(
	'Catalog Categories'=>array('index'),
	'Manage',
);

$this->menu=array(
	array('label'=>'Создать', 'url'=>array('create')),
);

?>

<h1>Управление категориями продуктов</h1>

<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'catalog-category-grid',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
		'id',
		'name',
		array(
			'class'=>'CButtonColumn',
		),
	),
)); ?>
