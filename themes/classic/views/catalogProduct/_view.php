<?php
/* @var $this CatalogProductController */
/* @var $data CatalogProduct */
?>

<div class="view" style="border:1px solid #5EAFD4; float:left; width: 42%;height: 330px; margin: 10px; padding: 10px;">

	<h3 style="text-align: center"><?php echo CHtml::link(CHtml::encode($data->name),Yii::app()->createUrl('/catalogProduct/view',array('id'=>$data->id))); ?></h3>

	<b>Категория:</b>
	<?php echo CHtml::encode($data->category->name); ?>
	<br />

	<?php echo CHtml::image($data->getImageSrc(),$data->name,array('style'=>'height:200px; max-width:130px; float:left')); ?>
	<br />
	<p align="right">
	<?php echo $data->description; ?>
	</p>
	<br />

	<b>Цена:</b>
	<?php echo CHtml::encode($data->price); ?>
	<br />
<p style="text-align: right; padding: 0 10px;">
	<button class="addToCart" id="<?=$data->id?>">Добавить в корзину</button>
</p>
</div>