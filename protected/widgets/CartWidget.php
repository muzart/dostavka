<?php
/**
 * Created by PhpStorm.
 * User: _muzart
 * Date: 22.11.13
 * Time: 1:10
 */

class CartWidget extends CWidget{

    public function run(){
		$positions = Yii::app()->shoppingCart->getPositions();
        $this->render('CartWidget',array(
			'positions'=>$positions,
		));
    }

} 