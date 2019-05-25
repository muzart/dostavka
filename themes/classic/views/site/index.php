<?php
if(Yii::app()->user->hasFlash('cart')){
    echo Yii::app()->user->getFlash('cart');
}
?>