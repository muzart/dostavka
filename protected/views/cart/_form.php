<?php
/* @var $this OrdersController */
/* @var $model Orders */
/* @var $form CActiveForm */
?>

<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'orders-form',
	// Please note: When you enable ajax validation, make sure the corresponding
	// controller action is handling ajax validation correctly.
	// There is a call to performAjaxValidation() commented in generated controller code.
	// See class documentation of CActiveForm for details on this.
	'enableAjaxValidation'=>false,
)); ?>

	<?php echo $form->errorSummary($model); ?>
	<table>
		<tr>
			<td><?php echo $form->labelEx($model,'person_type'); ?></td>
			<td><?php echo $form->dropDownList($model,'person_type',array(1=>'Физическое лицо',2=>'Юридическое лицо')); ?>
				<?php echo $form->error($model,'person_type'); ?></td>
		</tr>
		<tr>
			<td><?php echo $form->labelEx($model,'fio'); ?></td>
			<td><?php echo $form->textField($model,'fio',array('size'=>60,'maxlength'=>100)); ?>
				<?php echo $form->error($model,'fio'); ?></td>
		</tr>
		<tr>
			<td><?php echo $form->labelEx($model,'address'); ?></td>
			<td><?php echo $form->textField($model,'address',array('size'=>60,'maxlength'=>150)); ?>
				<?php echo $form->error($model,'address'); ?></td>
		</tr>
		<tr>
			<td>		<?php echo $form->labelEx($model,'tel'); ?></td>
			<td><?php echo $form->textField($model,'tel',array('size'=>15,'maxlength'=>15)); ?>
				<?php echo $form->error($model,'tel'); ?></td>
		</tr>
		<tr>
			<td><?php echo $form->labelEx($model,'fax'); ?></td>
			<td><?php echo $form->textField($model,'fax',array('size'=>15,'maxlength'=>15)); ?>
				<?php echo $form->error($model,'fax'); ?></td>
		</tr>
		<tr>
			<td><?php echo $form->labelEx($model,'email'); ?></td>
			<td><?php echo $form->textField($model,'email',array('size'=>50,'maxlength'=>50)); ?>
				<?php echo $form->error($model,'email'); ?></td>
		</tr>
		<tr>
			<td colspan="2"><?php echo CHtml::submitButton('Оформить'); ?></td>
		</tr>
	</table>

<?php $this->endWidget(); ?>

</div><!-- form -->