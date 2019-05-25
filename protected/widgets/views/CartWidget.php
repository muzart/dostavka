<?php
/**
 * Created by PhpStorm.
 * User: _muzart
 * Date: 22.11.13
 * Time: 1:11
 */
//Yii::app()->
?>
<div class="cart" style="background-color: #fff772;">
    <h3 align="center"><span class="glyphicon glyphicon-shopping-cart"></span> <?php echo CHtml::link('Ваша корзина',Yii::app()->createUrl('/cart'),array('style'=>'color:#45aaff'));?></h3>
	<?php if(!empty($positions)):?>
    <table class="table table-striped">
		<tr style="color: #45aaff">
			<th colspan="2"> Товар </th>
			<th> шт. </th>
			<th>  </th>
		</tr>
		<?php foreach($positions as $position):?>
        <tr>
            <td>
				<?=($position->image) ? '<img src="' . Yii::app()->baseUrl.'/images/products/'.$position->image . '" height="30"' : ''?>
				<img src="<?php echo Yii::app()->baseUrl;?>/assets/media/images/battle.jpg" height="30" /></td>
            <td><a href="<?php echo Yii::app()->createUrl('catalogProduct') . '/'. $position->id?>"><?=$position->name?></a></td>
            <td><?=$position->getQuantity()?></td>
            <td>
				<a href="#" class="trash" id="<?=$position->getId()?>"><img src="/images/delete.png" width="10"></a>
			</td>
        </tr>
		<?php endforeach;?>
    </table>
    <p align="center">
        <a href="<?=Yii::app()->createUrl('cart')?>" style="padding: 8px 8px;background: #399DCA;color: #ffffff;font-weight: bold;border: none;border-radius: 8px;cursor: pointer;">Оформить</a>
        <button id="clearCart" class="btn btn-danger" style="padding: 8px 8px;margin: 10px">Очистить</button>
    </p>
	<?php else:?>
		<p style="padding: 10px;;">
			Корзина пуста...
		</p>
	<?php endif;?>
</div>
<script>
	jQuery('#clearCart').click(
		function(){
			if(confirm("Очистить корзину?")){
				jQuery.ajax({
					'type':'POST',
					'data':{'clear':'1'},
					'url':'<?=Yii::app()->createUrl('cart/clear');?>',
					'cache':false,
					'success':function(html){
						jQuery(".cart").html(html)
					}
				});
			}
	});
	jQuery('.trash').click(
		function(){
				$.ajax({
					'type':'POST',
					'data':{'id':this.getAttribute("id")},
					'url':'<?=Yii::app()->createUrl('cart/remove');?>',
					'cache':false,
					'success':function(html){
						jQuery(".cart").html(html)
					}
				});
			return false;
	});


</script>