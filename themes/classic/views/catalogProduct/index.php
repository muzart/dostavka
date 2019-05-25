<?php
/* @var $this CatalogProductController */
/* @var $dataProvider CActiveDataProvider */

?>

<h1>Наша продукция</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>

<script type="text/javascript">
	$('button.addToCart').click(
		function(){
			$.ajax({
				'url':'<?=Yii::app()->createUrl("cart/add")?>',
				'data':{'id':this.getAttribute("id")},
				'type':'POST',
				'cache':false,
				'success':function(html){
					$('.cart').html(html);
				}
			})
		}
	);
</script>