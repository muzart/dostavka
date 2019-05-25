<?php
/* @var $this CartController */

$this->breadcrumbs=array(
	'Cart',
);
$counter = 0;
?>
<?php if(Yii::app()->user->hasFlash('cart')):?>
	<div class="message">
		<p><?php echo Yii::app()->user->getFlash('cart');?></p>
	</div>
<?php endif;?>
<h1>Ваша корзина <?=(empty($positions)?" пуста":"")?></h1>
<br/>
<?php if(!empty($positions)):?>
<table class="table table-striped" style="width: 100%">
	<tr>
		<th> # </th>
		<th> Товар </th>
		<th> Цена </th>
		<th> Количество </th>
		<th> Общая цена </th>
	</tr>
	<?php foreach($positions as $position):?>
	<tr>
		<td> <?=++$counter?> </td>
		<td> <?=$position->name . " (".$position->category->name.")"?></td>
		<td> <?=$position->getPrice()?></td>
		<td> <?=$position->getQuantity()?></td>
		<td> <?=$position->getSumPrice()?></td>
	</tr>
	<?php endforeach;?>
	<tr>
		<th colspan="4">Итого:</th>
		<th><?=$cost?></th>
	</tr>
</table>
	<br/>
	<br/>
<a href="<?=Yii::app()->createUrl('cart/buy')?>" class="button">Перейти на покупку &raquo;</a>
<?php endif;?>