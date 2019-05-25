<?php
/* @var $this ContentController */
/* @var $model Content */
?>
<?php if($model):?>
<h1 style="font-size:30px; color:#0885bd; font-weight:bold;"><?php echo $model->title; ?></h1>
<div class="nc_list nc_text">
	<div class="nc_row">
		<?=$model->description?>
	</div>
</div>
<?php else:?>

<?php endif;?>
<?php //$this->widget('zii.widgets.CDetailView', array(
//	'data'=>$model,
//	'attributes'=>array(
//		'id',
//		'lang_id',
//		'category_id',
//		'title',
//		'hash',
//		'description',
//		'meta_tags',
//		'meta_description',
//		'created',
//		'updated',
//		'created_by',
//		'image',
//	),
//)); ?>
