<html>
	<title><?=$this->pageTitle?></title>
	<meta name="description" content="Наша компания &quot;Служба доставки воды&quot; – осуществляет свою деятельность в Дубне с 2003 года, в Дмитрове с 2010 года. За долгие годы своей безупречной работы, компания снискала уважение тысяч горожан.">		<meta name="Keywords" content="Доставка воды, г.Дубна, г.Талдом, г. Дмитров и Дмитровский район, г.Яхрома, г.Икша, Королевская вода, Кашинская, Nestle Pure Life, Пилигрим">
	<meta http-equiv="content-type" content="text/html; charset=utf-8">

	<link rel="icon" href="<?=Yii::app()->baseUrl?>/favicon.ico">
	<link rel="stylesheet" href="<?=Yii::app()->baseUrl?>/css/style.css" type="text/css">

	<script type="text/javascript" src="<?=Yii::app()->baseUrl?>/js/menu.js" defer="defer"></script>
	<script type="text/javascript" src="<?=Yii::app()->baseUrl?>/js/jquery.js"></script>
	<script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>
	<script type="text/javascript" src="<?=Yii::app()->baseUrl?>/js/jquery.mousewheel-3.0.4.pack.js"></script>
	<script type="text/javascript" src="<?=Yii::app()->baseUrl?>/js/jquery.fancybox-1.3.2.js"></script>
	<link rel="stylesheet" type="text/css" href="<?=Yii::app()->baseUrl?>/css/jquery.fancybox-1.3.2.css" media="screen">
	<script type="text/javascript">
		function toggle_show(id) {
			document.getElementById(id).style.display = document.getElementById(id).style.display == 'none' ? 'block' : 'none';
		}
	</script>
	<script type="text/javascript">
		$(document).ready(function(){
			$(".m").hover(function() {
				$(this).animate({opacity: "0.5"}, "fast");
			}, function() {
				$(this).animate({opacity: "1.0"}, "slow");
			});
		});
	</script>
	<script type="text/javascript">
		$(document).ready(function() {
			$('a#example1').fancybox();
		});
		$(function() {
			$('#fancy-contact').click(function() {
				$.fancybox.showActivity();
				$.get(Drupal.settings.basePath + 'contact', function(data) {
					var form = $('#contact-mail-page', data);
					$.fancybox({content:form});
				});
				return false;
			});
		});
	</script>
</head>

<body>
<div class="center">
	<div class="header">
		<div class="logo" style="margin-top: 9px; margin-left: 10px;">
			<a href="<?=Yii::app()->createUrl('/');?>" style="display: block;">
				<img src="<?=Yii::app()->baseUrl?>/images/logo55.png" alt="Служба доставки воды" height="70" title="Служба доставки воды">
			</a>
		</div>
		<div class="control">
			<span style="font-size:20px; color:#3fadd6;">ЗАКАЗ ВОДЫ:</span>
			<div style="border-top:#3fadd6 solid 1px; width:250px; margin-top:2px; height:4px;"></div>
			<span style="font-size:16px; color:#afafaf;">г.Ургенч</span><br>
			<span style="font-size:28px; color:#3fadd6;">0<span style="color:#6a9bae;">(62)</span><noskype></noskype> 228 7780</span><br>
		</div>
	</div>
	<div style="clear:both"><br></div>
	<div style="position: absolute; left:-2.5%; top:150px; z-index:2;">
		<img src="<?=Yii::app()->baseUrl?>/images/left_shadow.png" width="24" height="623" alt="">
	</div>
	<div style="position: absolute; left:100%; top:150px; z-index:2;">
		<img src="<?=Yii::app()->baseUrl?>/images/right_shadow.png" width="24" height="623" alt="">
	</div>
	<div style="claer:both;"></div>
	<div class="menu">
		<a href="<?=Yii::app()->createUrl('/')?>" class="menu_link">
			<div class="menu_uu">&nbsp;&nbsp;&nbsp; Главная &nbsp;&nbsp;&nbsp;</div>
		</a>
		<a href="<?=Yii::app()->createUrl('/content/view',array('hash'=>'about'))?>" class="menu_link" onmouseover="OnOverMain(this,2)" onmouseout="OnOutMain(this);">
			<div class="menu_uu">&nbsp;&nbsp;&nbsp; О компании &nbsp;&nbsp;&nbsp;</div>
		</a>

		<a href="<?=Yii::app()->createUrl('/catalogProduct')?>" class="menu_link" onmouseover="OnOverMain(this,2)" onmouseout="OnOutMain(this);">
			<div class="menu_uu">&nbsp;&nbsp;&nbsp; Каталог &nbsp;&nbsp;&nbsp;</div>
		</a>
		<a href="<?=Yii::app()->createUrl('/content/view',array('hash'=>'equipment'))?>" class="menu_link" onmouseover="OnOverMain(this,2)" onmouseout="OnOutMain(this);">
		<div class="menu_uu" style="color: rgb(255, 255, 255);">&nbsp;&nbsp;&nbsp; Оборудование &nbsp;&nbsp;&nbsp;</div>
		</a>
		<a href="<?=Yii::app()->createUrl('/content/view',array('hash'=>'delivery'))?>" class="menu_link" onmouseover="OnOverMain(this,2)" onmouseout="OnOutMain(this);">
			<div class="menu_uu" style="color: rgb(255, 255, 255);">&nbsp;&nbsp;&nbsp; Доставка &nbsp;&nbsp;&nbsp;</div>
		</a>
		<a href="<?=Yii::app()->createUrl('/site/contact')?>" class="menu_link" onmouseover="OnOverMain(this,2)" onmouseout="OnOutMain(this);">
			<div class="menu_uu" style="color: rgb(255, 255, 255);">&nbsp;&nbsp;&nbsp; Контакты &nbsp;&nbsp;&nbsp;</div>
		</a>
		<a href="<?=Yii::app()->createUrl('/cart')?>" class="menu_link" onmouseover="OnOverMain(this,2)" onmouseout="OnOutMain(this);">
			<div class="menu_uu" style="color: rgb(255, 255, 255);">&nbsp;&nbsp;&nbsp; Корзина &nbsp;&nbsp;&nbsp;</div>
		</a>
		<div style="float:right">
			<a href="<?=Yii::app()->createUrl('/site/contact')?>" class="opacity">
				<img src="<?=Yii::app()->baseUrl?>/images/control_03.gif" width="35" height="35" style="float:right;" alt="">
			</a>
			<a href="<?=Yii::app()->createUrl('/site/map')?>" class="opacity">
				<img src="<?=Yii::app()->baseUrl?>/images/control_02.gif" width="35" height="35" style="float:right; margin-right:8px;" alt="">
			</a>
			<a href="<?=Yii::app()->createUrl('/')?>" class="opacity">
				<img src="<?=Yii::app()->baseUrl?>/images/control_01.gif" width="35" height="35" style="float:right; margin-right:8px;" alt="">
			</a>
		</div>
	</div>
	<div class="content">
			<?php echo $content;?>
		<div style="clear:both"></div>
	</div>
	<div style="clear:both"></div>
	<div class="footer">
		<div class="footer_menu">&nbsp;&nbsp;&nbsp;<span style="color:#0168B7">Главная</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="/">О компании</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="../aqua/index.html">Вода</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="../equipment/index.html">Оборудование</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="../delivery/index.html">Доставка</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="../contact/index.html">Контакты</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="../partners/index.html">Партнеры</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="../news/index.html">Новости/Акции</a>&nbsp;&nbsp;&nbsp;</div>
		<div class="footer_logo" style="width:210px;"><div style="padding-top:10px;"><a href="../index.html"><img src="<?=Yii::app()->baseUrl?>/images/logo_footer.png" alt=""></a></div></div>
		<div class="copy" style="width:200px;">© 2016 "<?=Yii::app()->name?>".<br>Все права защищены </div>
		<div class="copy" style="width:270px;">141983, г.Ургенч, ул. Шерозий, д.26, с<br>E-mail: <a href="mailto:suhrob@mail.ru">suhrob@mail.ru</a></div>
		<div class="copy" style="width:210px; text-align:right">
			<a href="http://www.se.ubtuit.uz/">
				Разработано<br>
				в студии SE UBTUIT
			</a>
		</div>
	</div>
</div>
<!--<![endif]-->
</body>
</html>