<?php

/**
 * Created by PhpStorm.
 * User: Muzaffar
 * Date: 05.06.2016
 * Time: 21:55
 */
class LoginWidget extends CWidget
{
    public function run(){
        $model = new UserLogin;
        $this->render('login',array(
            'model' => $model
        ));
    }
}