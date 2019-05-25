<?php
/* @var $this OrdersController */
/* @var $model Orders */

?>

<h1>View Orders #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'person_type',
		'fio',
		'address',
		'count',
		'tel',
		'fax',
		'email',
		'created',
	),
)); ?>
