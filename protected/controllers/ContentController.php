<?php

class ContentController extends Controller
{
	/**
	 * @var string the default layout for the views. Defaults to '//layouts/column2', meaning
	 * using two-column layout. See 'protected/views/layouts/column2.php'.
	 */
	public $layout='//layouts/column2';

	/**
	 * @return array action filters
	 */

	/**
	 * Displays a particular model.
	 * @param integer $id the ID of the model to be displayed
	 */
	public function actionView($hash)
	{
		$model = Content::model()->findByAttributes(array(
			'hash'=>$hash
		));
//		if($model === null) Yii::app()->end();
			$this->render('view',array(
				'model'=>$model,
			));
	}


	/**
	 * Lists all models.
	 */
	public function actionIndex()
	{
		$dataProvider=new CActiveDataProvider('Content');
		$this->render('index',array(
			'dataProvider'=>$dataProvider,
		));
	}
	public function loadModel($id)
	{
		$model=Content::model()->findByPk($id);
		if($model===null)
			throw new CHttpException(404,'The requested page does not exist.');
		return $model;
	}

	/**
	 * Performs the AJAX validation.
	 * @param Content $model the model to be validated
	 */
	protected function performAjaxValidation($model)
	{
		if(isset($_POST['ajax']) && $_POST['ajax']==='content-form')
		{
			echo CActiveForm::validate($model);
			Yii::app()->end();
		}
	}
}
