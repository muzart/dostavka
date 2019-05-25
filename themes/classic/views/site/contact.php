<?php
/* @var $this SiteController */
/* @var $model ContactForm */
/* @var $form CActiveForm */

$this->pageTitle=Yii::app()->name . ' - Contact Us';
$this->breadcrumbs=array(
	'Contact',
);
?>
	<h1 style="font-size:30px; color:#0885bd; font-weight:bold;">Контакты</h1>
	<div class="nc_list nc_addresses">
		<div style="float:left; width:360px; vertical-align:top;">

			<h3>г.Ургенч</h3>
			<div class="nc_item"><span class="nc_title">Адрес: </span><span class="nc_value">ул. Шерозий, д.29</span></div>
			<div class="nc_item"><span class="nc_title">Телефон: <br></span><span class="nc_value">(062)228-77-80,<br>
Пожаловаться Директору 998-93-717-01-66 <br>
Ибрагимов Фаррух</span><p></p></div>
			<div class="nc_item">E-mail: <a href="mailto:<?=Yii::app()->params['adminEmail'];?>"><?=Yii::app()->params['adminEmail'];?></a></div>

		</div>
	</div>
	<div style="clear:both;"></div>
	<div style="border-bottom:#5DAFD4 1px dotted; width:100%;"></div>

<h1>Обратная связь</h1>

<?php if(Yii::app()->user->hasFlash('contact')): ?>

<div class="flash-success">
	<?php echo Yii::app()->user->getFlash('contact'); ?>
</div>

<?php else: ?>


<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'contact-form',
	'enableClientValidation'=>true,
	'clientOptions'=>array(
		'validateOnSubmit'=>true,
	),
)); ?>

	<p class="note">Поля отмеченные с <span class="required">*</span> обязательны для заполнения.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'name'); ?><br/>
		<?php echo $form->textField($model,'name'); ?>
		<?php echo $form->error($model,'name'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'email'); ?><br/>
		<?php echo $form->textField($model,'email'); ?>
		<?php echo $form->error($model,'email'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'subject'); ?><br/>
		<?php echo $form->textField($model,'subject',array('size'=>60,'maxlength'=>128)); ?>
		<?php echo $form->error($model,'subject'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'body'); ?><br/>
		<?php echo $form->textArea($model,'body',array('rows'=>6, 'cols'=>50)); ?>
		<?php echo $form->error($model,'body'); ?>
	</div>

	<?php if(CCaptcha::checkRequirements()): ?>
	<div class="row">
		<?php echo $form->labelEx($model,'verifyCode'); ?>
		<div>
		<?php $this->widget('CCaptcha',array(
			'showRefreshButton'=>false,
			'clickableImage'=>true,
			'imageOptions'=>array(
				'width'=>'150',
				'style'=>'height:60px'
			)
		)); ?> <br/>
		<script>
			$("img#yw0").click();
		</script>
		<?php echo $form->textField($model,'verifyCode'); ?>
		</div>
		<?php echo $form->error($model,'verifyCode'); ?>
	</div>
	<?php endif; ?>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Отправить'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->

<?php endif; ?>