<div style="border: 1px solid #0fff7a; background-color: #2bff52; padding: 10px;">
    <?php if(Yii::app()->user->isGuest):?>
    <?php echo CHtml::beginForm(Yii::app()->createUrl('/user/login')); ?>
    <h3 style="text-align: center;color: #0e509e">Вход</h3>
    <?php echo CHtml::errorSummary($model); ?>
    <table>
        <tr>
            <td><?php echo CHtml::activeLabelEx($model,'username'); ?>
                <br>
                <?php echo CHtml::activeTextField($model,'username',array('size'=>25)) ?></td>
        </tr>
        <tr>
            <td><?php echo CHtml::activeLabelEx($model,'password'); ?><br>
                <?php echo CHtml::activePasswordField($model,'password',array('size'=>21)) ?></td>
        </tr>
        <tr>
            <td><?php echo CHtml::link(UserModule::t("Register"),Yii::app()->getModule('user')->registrationUrl); ?>
                <br><?php echo CHtml::link(UserModule::t("Lost Password?"),Yii::app()->getModule('user')->recoveryUrl); ?></td>
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
<?php else:?>
    <p>Добро пожаловать, <?php echo Yii::app()->user->name;?><br></p>
    <?=CHtml::link('Выход',Yii::app()->createUrl('/user/logout'),
        array('style'=>'border-radius:3px; 
                        background-color: #45aaff; 
                        padding:4px 10px;
                        margin:0 auto; display: 
                        block; width:43px;
                        color:white'))?>
<?php endif;?>
</div>