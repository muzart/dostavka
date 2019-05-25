<?php
/* @var $this FaqController */
/* @var $model Faq */

$this->breadcrumbs=array(
	'Faqs'=>array('index'),
	'Manage',
);

$this->menu=array(
	array('label'=>'Создать', 'url'=>array('create')),
);

?>

<h1>Управление вопрос-ответами</h1>

<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'faq-grid',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
		'id',
		'question',
		'answer',
		array(
			'class'=>'CButtonColumn',
		),
	),
)); ?>
