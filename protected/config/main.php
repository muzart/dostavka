<?php

// uncomment the following to define a path alias
// Yii::setPathOfAlias('local','path/to/local-folder');

// This is the main Web application configuration. Any writable
// CWebApplication properties can be configured here.
return array(
	'basePath'=>dirname(__FILE__).DIRECTORY_SEPARATOR.'..',
	'name'=>'Jivchik Beverages - заказ воды',
	'theme'=>'classic',
	'language'=>'ru',

	// preloading 'log' component
	'preload'=>array('log'),

	// autoloading model and component classes
	'import'=>array(
		'application.models.*',
		'application.components.*',
		'application.modules.user.models.*',
		'application.modules.user.*',
		'application.modules.user.components.*',
		'ext.shoppingCart.*',
		'application.widgets.*',
	),

	'modules'=>array(
		// uncomment the following to enable the Gii tool
		'admin',
		'user'=>array(
			# encrypting method (php hash function)
			'hash' => 'md5',
			# send activation email
			'sendActivationMail' => true,
			# allow access for non-activated users
			'loginNotActiv' => false,
			# activate user on registration (only sendActivationMail = false)
			'activeAfterRegister' => false,
			# automatically login from registration
			'autoLogin' => true,
			# registration path
			'registrationUrl' => array('/user/registration'),
			# recovery password path
			'recoveryUrl' => array('/user/recovery'),
			# login form path
			'loginUrl' => array('/user/login'),
			# page after login
			'returnUrl' => array('/user/profile'),
			# page after logout
			'returnLogoutUrl' => array('/user/login'),
		),
		'gii'=>array(
			'class'=>'system.gii.GiiModule',
			'password'=>'123',
			// If removed, Gii defaults to localhost only. Edit carefully to taste.
			'ipFilters'=>array('127.0.0.1','::1'),
		),

	),

	// application components
	'components'=>array(
		'authManager' => array(
			// Будем использовать свой менеджер авторизации
			'class' => 'PhpAuthManager',
			// Роль по умолчанию. Все, кто не админы, модераторы и юзеры — гости.
			'defaultRoles' => array('guest'),
		),
		'user'=>array(
			// enable cookie-based authentication
			'class' => 'WebUser',
			'allowAutoLogin'=>true,
			'loginUrl' => array('/user/login'),
		),
		'mailer' => array(
			'class' => 'application.extensions.mailer.EMailer',
			'pathViews' => 'application.views.email',
			'pathLayouts' => 'application.views.layouts',
			'testMode' => false,
			'layout' => 'email',
		),
		'shoppingCart' =>
			array(
				'class' => 'ext.shoppingCart.EShoppingCart',
			),
		'urlManager'=>array(
			'urlFormat'=>'path',
			'showScriptName'=>true,
			'rules'=>array(
				'/'=>array('/content/view/hash/index'),
				'/content/<hash:\w+>'=>'/content/view',
				'<controller:\w+>/<id:\d+>'=>'<controller>/view',
				'<controller:\w+>/<action:\w+>/<id:\d+>'=>'<controller>/<action>',
				'<controller:\w+>/<action:\w+>'=>'<controller>/<action>',
			),
		),

		// uncomment the following to use a MySQL database

		'db'=>array(
			'connectionString' => 'mysql:host=localhost;dbname=dostavka',
			'emulatePrepare' => true,
			'username' => 'root',
			'password' => '',
			'charset' => 'utf8',
			'tablePrefix' => 'tbl_',
		),

		'errorHandler'=>array(
			// use 'site/error' action to display errors
			'errorAction'=>'site/error',
		),
		'log'=>array(
			'class'=>'CLogRouter',
			'routes'=>array(
				array(
					'class'=>'CFileLogRoute',
					'levels'=>'error, warning',
				),
				// uncomment the following to show log messages on web pages
				/*
				array(
					'class'=>'CWebLogRoute',
				),
				*/
			),
		),
	),

	// application-level parameters that can be accessed
	// using Yii::app()->params['paramName']
	'params'=>array(
		// this is used in contact page
		'adminEmail'=>'artikovmuzaffar@gmail.com',
		'salt' => 'asdaas345#$%^gasRTY',
		'smtp' => array(
			"host" => "smtp.googlemail.com:465",
			"debug" => 0,
			"auth" => true,
			"port" => 2525,
			"username" => "khpmailer@gmail.com",
			"password" => "sender159!@#125",
			"replyto" => "no-reply@jivchik.com",
			"fromname" => "Jivchik Beverages",
			"from" => "orders@jivchik.com",
			"charset" => "utf-8",
		)
	),
);