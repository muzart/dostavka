<?php
$this->pageTitle=Yii::app()->name . ' - '.UserModule::t("Login");
$this->breadcrumbs=array(
	UserModule::t("Login"),
);
?>


<div class="form" style="margin:0 auto; width: 350px">
	<h1><?php echo UserModule::t("Login"); ?></h1>

	<?php if(Yii::app()->user->hasFlash('loginMessage')): ?>

		<div class="success">
			<?php echo Yii::app()->user->getFlash('loginMessage'); ?>
		</div>

	<?php endif; ?>

	<p><?php echo UserModule::t("Please fill out the following form with your login credentials:"); ?></p>

<?php echo CHtml::beginForm(); ?>

	<p class="note"><?php echo UserModule::t('Fields with <span class="required">*</span> are required.'); ?></p>
	
	<?php echo CHtml::errorSummary($model); ?>
	<table>
		<tr>
			<td><?php echo CHtml::activeLabelEx($model,'username'); ?></td>
			<td><?php echo CHtml::activeTextField($model,'username',array('size'=>35)) ?></td>
		</tr>
		<tr>
			<td><?php echo CHtml::activeLabelEx($model,'password'); ?></td>
			<td><?php echo CHtml::activePasswordField($model,'password',array('size'=>30)) ?></td>
		</tr>
		<tr>
			<td><?php echo CHtml::link(UserModule::t("Register"),Yii::app()->getModule('user')->registrationUrl); ?></td>
			<td><?php echo CHtml::link(UserModule::t("Lost Password?"),Yii::app()->getModule('user')->recoveryUrl); ?></td>
		</tr>
		<tr>
			<td colspan="2">
				<?php echo CHtml::activeCheckBox($model,'rememberMe'); ?>
				<?php echo CHtml::activeLabelEx($model,'rememberMe'); ?>
			</td>
		</tr>
		<tr>
			<td colspan="2" style="text-align: center">
				<?php echo CHtml::submitButton(UserModule::t("Login")); ?>
			</td>
		</tr>
	</table>
<?php echo CHtml::endForm(); ?>
</div><!-- form -->


<?php
$form = new CForm(array(
    'elements'=>array(
        'username'=>array(
            'type'=>'text',
            'maxlength'=>32,
        ),
        'password'=>array(
            'type'=>'password',
            'maxlength'=>32,
        ),
        'rememberMe'=>array(
            'type'=>'checkbox',
        )
    ),

    'buttons'=>array(
        'login'=>array(
            'type'=>'submit',
            'label'=>'Login',
        ),
    ),
), $model);
?>