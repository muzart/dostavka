<?php
/* @var $this DefaultController */

$this->breadcrumbs=array(
	$this->module->id,
);
?>
<h1><?=Yii::app()->name.'  ('.Yii::app()->user->name.')'?></h1>
<div class="info">
	<?=CHtml::link('Контент',Yii::app()->createUrl('/admin/content'))?>
	<?=CHtml::link('Заказы',Yii::app()->createUrl('/admin/orders'))?>
	<?=CHtml::link('Вопрос ответ',Yii::app()->createUrl('/admin/faq'))?>
	<?=CHtml::link('Пользователи',Yii::app()->createUrl('/admin/user'))?>
</div>