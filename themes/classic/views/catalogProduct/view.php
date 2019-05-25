<?php
/* @var $this CatalogProductController */
/* @var $model CatalogProduct */
?>

<div class="view" style="border:1px solid #5EAFD4;height: 330px; margin: 10px; padding: 10px; border-radius: 8px">

	<h3 style="text-align: center"><?php echo CHtml::encode($model->name); ?></h3>

	<b>Категория:</b>
	<?php echo CHtml::encode($model->category->name); ?>
	<br />

	<?php echo CHtml::image($model->getImageSrc(),$model->name,array('style'=>'height:200px; max-width:130px; float:left')); ?>
	<br />
	<p align="right">
		<?php echo $model->description; ?>
	</p>
	<br />

	<b>Цена:</b>
	<?php echo CHtml::encode($model->price); ?>
	<br />
	<p style="text-align: right; padding: 0 10px;">
		<button class="addToCart" id="<?=$model->id?>">Добавить в корзину</button>
	</p>
</div>

<script type="text/javascript">
	$('button.addToCart').click(
		function(){
			$.ajax({
				'url':'<?=Yii::app()->createUrl("cart/add")?>',
				'data':{'id':this.getAttribute("id")},
				'type':'POST',
				'cache':false,
				'success':function(html){
					$('.cart').html(html);
				}
			})
		}
	);
</script>