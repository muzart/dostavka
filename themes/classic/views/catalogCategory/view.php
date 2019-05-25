<?php
/* @var $this CatalogCategoryController */
/* @var $model CatalogCategory */
?>

<h1>View CatalogCategory #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'name',
	),
)); ?>
