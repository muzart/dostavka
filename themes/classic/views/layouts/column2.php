<?php /* @var $this Controller */ ?>
<?php $this->beginContent('//layouts/main'); ?>
    <div class="center_block">
		<?php echo $content; ?>
    </div>
    <div class="left_block">
        <br>
        <div style="background-color: ">
            <span style="font-size:18px; font-weight:bold; color: #FFF;">КОНТАКТЫ</span>
            <br>
            <br>
            <b>г.Ургенч</b>
            <br>
        <span style="color:#FFF">
          ул. Шерозий, д.29,
          <br>
          (062) 228-77-80,
        </span>
        </div>
        <?php if(!empty($this->menu)):?>
        <div style="border-top: #CCC dotted 1px; margin-top:7px; height:4px;"></div>
        <div class="sidebar">
            <?php
            $this->beginWidget('zii.widgets.CPortlet', array(
                'title'=>'ОПЕРАЦИИ',
                'htmlOptions'=>array('style'=>'font-size:18px; font-weight:bold; color: white; background-color: #ffa216; padding: 10px')
            ));
            $this->widget('zii.widgets.CMenu', array(
                'items'=>$this->menu,
                'htmlOptions'=>array('style'=>'font-size: 14px;list-style: none; margin-left: -30px'),
            ));
            $this->endWidget();
            ?>
        </div>
        <?php endif;?>
        <?php $this->widget('application.widgets.CartWidget');?>
        <?php $this->widget('application.widgets.LoginWidget');?>

<br>

    </div>
<?php $this->endContent(); ?>