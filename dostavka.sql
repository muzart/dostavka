-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Авг 22 2016 г., 18:56
-- Версия сервера: 10.1.13-MariaDB
-- Версия PHP: 7.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `dostavka`
--

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_category`
--

CREATE TABLE `catalog_category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `catalog_category`
--

INSERT INTO `catalog_category` (`id`, `name`) VALUES
(1, 'Кулеры'),
(2, 'Питьевая вода'),
(3, 'Дополнительные материалы');

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_product`
--

CREATE TABLE `catalog_product` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `category_id` int(11) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `description` text,
  `price` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `catalog_product`
--

INSERT INTO `catalog_product` (`id`, `name`, `category_id`, `image`, `description`, `price`) VALUES
(1, 'AquaLife', 2, '1465054519_product_693.jpg', '<h4>\r\n	Краткие характеристики</h4>\r\n<ul class="descriptions-list">\r\n	<li>\r\n		<span class="n">Артикул:</span> <span class="v">010500-0026704</span></li>\r\n	<li>\r\n		<span class="n">Объем:</span> <span class="v">19 литров</span></li>\r\n	<li>\r\n		<span class="n">Вид:</span> <span class="v">Без газа</span></li>\r\n	<li>\r\n		<span class="n">Тип тары:</span> <span class="v">Оборотная</span></li>\r\n	<li>\r\n		<span class="n">Материал тары:</span> <span class="v">ПЭТ</span></li>\r\n	<li>\r\n		<span class="n">Бренд:</span> <span class="v">Aqualife</span></li>\r\n</ul>\r\n', '6000 сум'),
(2, 'Черноголовская', 2, '1465190943_product_849.jpg', '<h4>\r\n	Краткие характеристики</h4>\r\n<ul class="descriptions-list">\r\n	<li>\r\n		<span class="n">Артикул:</span> <span class="v">010500-0001932</span></li>\r\n	<li>\r\n		<span class="n">Объем:</span> <span class="v">5 литров</span></li>\r\n	<li>\r\n		<span class="n">Вид:</span> <span class="v">Без газа</span></li>\r\n	<li>\r\n		<span class="n">Тип тары:</span> <span class="v">Одноразовая</span></li>\r\n	<li>\r\n		<span class="n">Материал тары:</span> <span class="v">ПЭТ</span></li>\r\n	<li>\r\n		<span class="n">Бренд:</span> <span class="v">Черноголовская</span></li>\r\n</ul>\r\n', '3000 сум'),
(3, 'Черноголовская для детей', 2, '1465191769_product_386.jpg', '<h4>\r\n	Краткая характристика</h4>\r\n<ul class="descriptions-list">\r\n	<li>\r\n		<span class="n">Артикул:</span> <span class="v">010500-0021623</span></li>\r\n	<li>\r\n		<span class="n">Объем:</span> <span class="v">5 литров</span></li>\r\n	<li>\r\n		<span class="n">Вид:</span> <span class="v">Детская, Без газа</span></li>\r\n	<li>\r\n		<span class="n">Тип тары:</span> <span class="v">Одноразовая</span></li>\r\n	<li>\r\n		<span class="n">Материал тары:</span> <span class="v">ПЭТ</span></li>\r\n	<li>\r\n		<span class="n">Бренд:</span> <span class="v">Черноголовская</span></li>\r\n</ul>\r\n', '3000 сум'),
(4, 'Аквалайф', 2, '1465192003_product_887.jpg', '<h4>\r\n	Краткие характеристики</h4>\r\n<ul class="descriptions-list">\r\n	<li>\r\n		<span class="n">Артикул:</span> <span class="v">010500-0018727</span></li>\r\n	<li>\r\n		<span class="n">Объем:</span> <span class="v">0,6 литра</span></li>\r\n	<li>\r\n		<span class="n">Вид:</span> <span class="v">Без газа</span></li>\r\n	<li>\r\n		<span class="n">Тип тары:</span> <span class="v">Одноразовая</span></li>\r\n	<li>\r\n		<span class="n">Материал тары:</span> <span class="v">ПЭТ</span></li>\r\n	<li>\r\n		<span class="n">Бренд:</span> <span class="v">Aqualife</span></li>\r\n</ul>\r\n', '800 сум'),
(5, 'Кулер 16L/E', 1, '1465210806_product_890.png', '', '750000 сум'),
(6, 'Кулер HC66/HC77', 1, '1465210841_product_651.png', '', '800000 сум'),
(7, 'Кулер 16L/D', 1, '1465210874_product_390.png', '', '450000 сум'),
(8, 'Бутил', 3, '1465210944_product_926.png', '', '6000 сум');

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Главная');

-- --------------------------------------------------------

--
-- Структура таблицы `content`
--

CREATE TABLE `content` (
  `id` int(11) NOT NULL,
  `lang_id` int(11) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `hash` varchar(150) NOT NULL,
  `description` text NOT NULL,
  `meta_tags` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `created` int(11) NOT NULL,
  `updated` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `content`
--

INSERT INTO `content` (`id`, `lang_id`, `category_id`, `title`, `hash`, `description`, `meta_tags`, `meta_description`, `created`, `updated`, `created_by`, `image`) VALUES
(1, NULL, 1, 'О компании', 'about', '<p>\r\n	<a href="../index.html">Служба доставки воды</a> работает для тех, кому не безразлично свое здоровье и здоровье своих близких. Ведь именно вода является первостепенным источником жизненных сил, обеспечивающих нормальное функционирование организма. От ее качества, чистоты, насыщенности минералами и другими полезными элементами зависит иммунитет, самочувствие и как итог &ndash; благополучие человека.</p>\r\n<p>\r\n	<a href="../index.html">Служба доставки воды</a> осуществляет свою деятельность в Ургенче с 2003 года, в Хиве с 2010 года. За долгие годы своей безупречной работы, компания снискала уважение тысяч горожан. Помимо частных лиц, услугами Службы доставки пользуются коммерческие организации и государственные учреждения, среди которых &laquo;Администрация города Ургенч, Ургенчская городская больница, Хивинская городская поликлиника, школы, детские сады и многие другие. Секрет доверия прост &ndash; высочайшее качество продукции и отличный сервис. </p>\r\n<p>\r\n	Компания сотрудничает исключительно с известными и зарекомендовавшими себя производителями бутилированной воды, регулярно проводиться анализ качества продукции в лабораториях заводов и независимых экспертных служб. Помимо непосредственно воды, Служба Доставки занимается доставкой, установкой и сервисным обслуживанием оборудования, облегчающего розлив &ndash; помпы, кулеры и диспенсеры на любой вкус.</p>\r\n', '', '', 1464952371, 1465208454, 0, ''),
(2, NULL, 1, 'Оборудование', 'equipment', '<p style="">\r\n	<strong>Уважаемые покупатели! Представленное оборудование доступно для заказа.</strong></p>\r\n<p style="">\r\n	<strong>О наличии на сладе уточняйте в офисах продаж.</strong><strong>тел. в Ургенче 228-77-80</strong></p>\r\n<p style="">\r\n	<strong>АРЕНДА КУЛЕРОВ </strong><strong>Наша компания предоставляет услугу:</strong><strong> Кулер в аренду. </strong><strong>Обычная аренда 50000 сум/мес.</strong></p>\r\n<p>\r\n	<u><strong>Прайс лист на техническое обслуживание и ремонт кулеров</strong></u></p>\r\n<p>\r\n	<strong>Санитарно техническое обслуживание</strong></p>\r\n<p>\r\n	кулер напольный -50000 сум</p>\r\n<p>\r\n	кулер настольный -30000 сум</p>\r\n<p>\r\n	стоимость обратной доставки включена в цену обслуживания</p>\r\n<p>\r\n	<u>на время санитарно технического обслуживания, по желанию клиента, может быть предоставлен кулер на замену стоимость услуги 5000 сум.</u></p>\r\n<p>\r\n	Кулера находящиеся у клиента в аренде, либо в пользовании ремонтируются и обслуживаются за счет компании.</p>\r\n<table align="left" border="1" cellpadding="0" cellspacing="0">\r\n	<tbody>\r\n		<tr>\r\n			<td style="width:432px">\r\n			<h3><strong>Услуги</strong></h3>\r\n			</td>\r\n			<td style="width:83px">\r\n			<p><strong>Цена</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:432px">\r\n			<p><span style="font-size:16px"><strong><em>Выезд за кулером&nbsp; - обратная доставка кулера&nbsp;</em></strong></span></p>\r\n			</td>\r\n			<td style="width:83px">\r\n			<p><span style="font-size:16px"><strong><em>50000&nbsp;сум</em></strong></span></p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:432px">\r\n			<p><span style="font-size:16px"><strong><em>Диагностика</em></strong></span></p>\r\n			</td>\r\n			<td style="width:83px">\r\n			<p><span style="font-size:16px"><strong><em>15000 сум.</em></strong></span></p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="3" style="width:517px">\r\n			<h3><strong>Система нагрева</strong></h3>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:432px">\r\n			<p><em>Замена бака (настольный без и с эл.охлаждением)</em></p>\r\n			</td>\r\n			<td style="width:83px">\r\n			<p><strong><em>100000 сум.</em></strong></p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:432px">\r\n			<p><em>Замена бака (настольный)&nbsp; с компрессорным охлаждением</em></p>\r\n			</td>\r\n			<td style="width:83px">\r\n			<p><strong><em>150000 сум.</em></strong></p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:432px">\r\n			<p><em>Замена бака&nbsp;(напольный кулер)</em></p>\r\n			</td>\r\n			<td style="width:83px">\r\n			<p><strong><em>160000 сум.</em></strong></p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:432px">\r\n			<p><em>Замена терморегулятора&nbsp;(датчик нагрева)</em></p>\r\n			</td>\r\n			<td style="width:83px">\r\n			<p><strong><em>15000 сум.</em></strong></p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:432px">\r\n			<p><em>Замена ТЭНа на кулерах с разборным баком</em></p>\r\n			</td>\r\n			<td style="width:83px">\r\n			<p><strong><em>120000 сум.</em></strong></p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:432px">\r\n			<p><em>Замена проводки</em></p>\r\n			</td>\r\n			<td style="width:83px">\r\n			<p><strong><em>40000 сум.</em></strong></p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="3" style="width:517px">\r\n			<p><strong>Охлаждающая система</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:432px">\r\n			<p><em>Замена вентилятора</em></p>\r\n			</td>\r\n			<td style="width:83px">\r\n			<p><strong><em>50000&nbsp; сум.</em></strong></p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:432px">\r\n			<p><em>Замена терморегулятора&nbsp; охлаждения в компрессорных кулерах</em></p>\r\n			</td>\r\n			<td style="width:83px">\r\n			<p><strong><em>50000 сум</em></strong></p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:432px">\r\n			<p><em>Замена охлаждающего элемента</em></p>\r\n			</td>\r\n			<td style="width:83px">\r\n			<p><strong><em>80000 сум.</em></strong></p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:432px">\r\n			<p><em>Замена блока охлаждения</em></p>\r\n			</td>\r\n			<td style="width:83px">\r\n			<p><strong><em>120000 сум.</em></strong></p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:432px">\r\n			<p><em>Замена обратного клапана</em></p>\r\n			</td>\r\n			<td style="width:83px">\r\n			<p><strong><em>20000 сум.</em></strong></p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="3" style="width:517px">\r\n			<p><strong>Ремонт корпуса</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:432px">\r\n			<p><em>Замена крана воды напольного кулера</em></p>\r\n			</td>\r\n			<td style="width:83px">\r\n			<p><strong><em>30000 сум.</em></strong></p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:432px">\r\n			<p><em>Замена крана&nbsp; воды настольного кулера</em></p>\r\n			</td>\r\n			<td style="width:83px">\r\n			<p><strong><em>40000 сум.</em></strong></p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:432px">\r\n			<p><em>Замена приёмного гнезда</em></p>\r\n			</td>\r\n			<td style="width:83px">\r\n			<p><strong><em>40000 сум.</em></strong></p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:432px">\r\n			<p><em>Замена водоприёмника</em></p>\r\n			</td>\r\n			<td style="width:83px">\r\n			<p><strong><em>50000 сум.</em></strong></p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:432px">\r\n			<p><em>Замена соединительных трубок</em></p>\r\n			</td>\r\n			<td style="width:83px">\r\n			<p><strong><em>20000 сум.</em></strong></p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '', '', 1464953544, 1465209207, 0, ''),
(3, NULL, 1, 'Доставка', 'delivery', '<h2 class="title" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 30px; border: 0px; outline: 0px; font-size: 18px; vertical-align: baseline; color: rgb(7, 166, 205); text-decoration: underline; font-family: &quot;Open Sans&quot;, sans-serif; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">\r\n	Доставка заказа осуществляется бесплатно</h2>\r\n<h2 class="orange" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 15px; vertical-align: baseline; color: rgb(248, 88, 0); font-style: italic; font-family: &quot;Open Sans&quot;, sans-serif; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">\r\n	Минимальная сумма заказа не менее 3-х бутылей воды 19 литров, либо 18000 сум.</h2>\r\n<p>\r\n	 </p>\r\n<h2 style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 1em; vertical-align: baseline; color: rgb(7, 166, 205); font-family: &quot;Open Sans&quot;, sans-serif; line-height: 24px; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">\r\n	Прием заказов</h2>\r\n<p style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; font-family: &quot;Open Sans&quot;, sans-serif; line-height: 24px; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">\r\n	Понедельник - воскресенье: с 08:00 до 20:00</p>\r\n<p>\r\n	 </p>\r\n<ul class="blue" style="box-sizing: border-box; margin: 0px 0px 30px; padding: 0px 0px 0px 17px; border-width: 0px 0px 0px 3px; border-left-style: solid; border-left-color: rgb(0, 164, 204); outline: 0px; font-size: 15px; vertical-align: baseline; list-style: none; font-family: &quot;Open Sans&quot;, sans-serif; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">\r\n	<li style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 1em; vertical-align: baseline; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">\r\n		Заказы для <u style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 1em; vertical-align: baseline; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">дистрибьюторов</u> принимаются <b style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 1em; vertical-align: baseline; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">до 14:00 </b>с ближайшей доставкой на следующий день.</li>\r\n	<li style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 1em; vertical-align: baseline; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">\r\n		Заказы для<u style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 1em; vertical-align: baseline; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">юридических лиц</u> принимаются <b style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 1em; vertical-align: baseline; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">до 18:00 </b>с ближайшей доставкой на следующий день.</li>\r\n	<li style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 1em; vertical-align: baseline; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">\r\n		Заказы для <u style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 1em; vertical-align: baseline; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">физических лиц</u> принимаются <b style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 1em; vertical-align: baseline; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">до 18:00 </b>с ближайшей доставкой на следующий день.</li>\r\n	<li style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 1em; vertical-align: baseline; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">\r\n		Заказы после 18.00 принимаются с ближайшей доставкой через день</li>\r\n	<li style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 1em; vertical-align: baseline; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">\r\n		Заказы оформленные на сайте в субботу и воскресенье &ndash; будут приняты с ближайшей доставкой на вторник.</li>\r\n</ul>\r\n<p>\r\n	 </p>\r\n<h2 style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 1em; vertical-align: baseline; color: rgb(7, 166, 205); font-family: &quot;Open Sans&quot;, sans-serif; line-height: 24px; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">\r\n	Время доставки</h2>\r\n<p>\r\n	<img align="right" class="del-img" height="164" src="/upload/userfiles/images/203e06eed4cc2c388a08a46d958a2822.png" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; max-width: 100%; height: auto; float: right; font-family: &quot;Open Sans&quot;, sans-serif; line-height: 24px; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;" width="300" /></p>\r\n<p style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; font-family: &quot;Open Sans&quot;, sans-serif; line-height: 24px; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">\r\n	Утренняя доставка с 9:00</p>\r\n<p style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; font-family: &quot;Open Sans&quot;, sans-serif; line-height: 24px; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">\r\n	Вечерняя доставка до 21:00</p>\r\n<p>\r\n	<b style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; font-family: &quot;Open Sans&quot;, sans-serif; line-height: 24px; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">Интервалы доставки:</b></p>\r\n<ul class="blue" style="box-sizing: border-box; margin: 0px 0px 30px; padding: 0px 0px 0px 17px; border-width: 0px 0px 0px 3px; border-left-style: solid; border-left-color: rgb(0, 164, 204); outline: 0px; font-size: 15px; vertical-align: baseline; list-style: none; font-family: &quot;Open Sans&quot;, sans-serif; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">\r\n	<li style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 1em; vertical-align: baseline; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">\r\n		Первая половина дня с 9:00 до 14:00</li>\r\n	<li style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 1em; vertical-align: baseline; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">\r\n		Вторая половина дня с 14:00 до 18:00</li>\r\n	<li style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 1em; vertical-align: baseline; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">\r\n		Вечерняя доставка с 18:00 до 21:00</li>\r\n</ul>\r\n<p>\r\n	Стоимость доставки.</p>\r\n<p>\r\n	Доставка включена в стоимость продукции при доставке транспортом компании. Платную доставку компания не осуществляет. При условии самовывоза продукция отпускается со складов компании по утверждённым прайс-листам, стоимость доставки не входит в стоимость товара, подробнее Вы можете узнать по телефону - 998 (62) 228 77-80 (звонок бесплатный).</p>\r\n', '', '', 1464953598, 1465219377, 0, ''),
(4, NULL, 1, 'Партнеры', 'partners', '\r\n	\r\n		\r\n			\r\n				<img alt="" height="120" src="/upload/userfiles/images/5561ff73f11895a0b9ce2b8d09fbedbf.gif" width="200" />\r\n			\r\n				<img alt="" height="222" src="/upload/userfiles/images/f24c07c297c57aff90b6447833539dda.jpg" width="227" />\r\n			\r\n				<img alt="" height="156" src="/upload/userfiles/images/a94444146c5f14580e59183df7d59cb5.png" width="201" />\r\n		\r\n	\r\n', '', '', 1464953950, 0, 0, ''),
(5, NULL, 1, ' Мы заботимся о здоровье  своих потребителей', 'index', '<p style="box-sizing: border-box; margin: 10px 0px 25px; padding: 0px; border: 0px; outline: 0px; font-size: 15px; vertical-align: baseline; line-height: 22px; font-family: &quot;Open Sans&quot;, sans-serif; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">\r\n	Наши напитки создаются по уникальным рецептам, разработанным специалистами компании, с использованием натуральных высококачественных компонентов.</p>\r\n<p style="box-sizing: border-box; margin: 10px 0px 25px; padding: 0px; border: 0px; outline: 0px; font-size: 15px; vertical-align: baseline; line-height: 22px; font-family: &quot;Open Sans&quot;, sans-serif; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">\r\n	Основу всей продукции составляет вода из собственных артезианских скважин, которая проходит минимальную обработку, сохраняя все полезные природные свойства. Вся продукция компании проходит постоянный контроль качества и соответствует самым жестким международным и российским стандартам.</p>\r\n<p class="blue" style="box-sizing: border-box; margin: 10px 0px 25px; padding: 0px 0px 0px 10px; border-width: 0px 0px 0px 2px; border-left-style: solid; border-left-color: rgb(0, 164, 204); outline: 0px; font-size: 15px; vertical-align: baseline; line-height: 22px; color: rgb(0, 164, 204); font-weight: 600; font-style: italic; font-family: &quot;Open Sans&quot;, sans-serif; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">\r\n	Мы заботимся о здоровье наших потребителей и хотим, чтобы каждый чувствовал, что наши напитки созданы именно для него.</p>\r\n<h2>\r\n	Гарантия качества</h2>\r\n<p class="sm" style="box-sizing: border-box; margin: 10px 0px 25px; padding: 0px 20px 0px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; line-height: 22px; font-family: &quot;Open Sans&quot;, sans-serif; background: rgb(247, 247, 247);">\r\n	Компания &laquo;Jivchik Beverages&raquo; производит продукцию высочайшего качества, которое достигается за счет современных технологий и процедур контроля:</p>\r\n<p style="text-align: center;">\r\n	<img alt="" height="122" src="/upload/userfiles/images/09744803594d9245099975d58adbd77b.png" width="317" /></p>\r\n<p>\r\n	HAССP (Hazard Analysis and Critical Control Points) &ndash; Анализ рисков и критические точки контроля.</p>\r\n<ul class="quality-list" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; list-style: none; line-height: 21px; font-family: &quot;Open Sans&quot;, sans-serif; background: rgb(247, 247, 247);">\r\n	<li style="box-sizing: border-box; margin: 0px; padding: 0px 0px 25px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; color: rgb(62, 62, 62); font-style: italic; line-height: 24px; background: transparent;">\r\n		\r\n			Система менеджмента безопасности пищевой продукции Стандарта ISO 22000 &laquo;Безопасность пищевых продуктов&raquo;.\r\n	</li>\r\n	<li style="box-sizing: border-box; margin: 0px; padding: 0px 0px 25px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; color: rgb(62, 62, 62); font-style: italic; line-height: 24px; background: transparent;">\r\n		\r\n			ООО &laquo;ПК &laquo;Jivchik Beverages&raquo; сертифицирована и соответствует требованиям FSSC 22000, ГОСТ Р ИСО 22000-2007 (ISO 22000:2005).\r\n	</li>\r\n	<li style="box-sizing: border-box; margin: 0px; padding: 0px 0px 25px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; color: rgb(62, 62, 62); font-style: italic; line-height: 24px; background: transparent;">\r\n		\r\n			Качество нашей продукции подтверждено дипломами и медалями крупнейших отечественных и международных конкурсов и выставок, в числе которых премии &laquo;Бренд года&raquo;, &laquo;Товар года&raquo;. Рецептуры напитков всех торговых марок компании &laquo;АКВАЛАЙФ&raquo; разработаны в соответствии с требованиями ГОСТ.\r\n	</li>\r\n	<li style="box-sizing: border-box; margin: 0px; padding: 0px 0px 25px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; color: rgb(62, 62, 62); font-style: italic; line-height: 24px; background: transparent;">\r\n		\r\n			Мы создаем продукцию для всех и каждого\r\n		\r\n			Широкий ассортиментный портфель компании охватывает все значимые сегменты рынка и каждый сможет найти напиток по вкусу.\r\n		\r\n			В ассортимент компании входит продукция: для детей с первого дня жизни, беременных женщин, пожилых людей, спортсменов и людей, ведущих активный образ жизни.\r\n		\r\n			Мы делаем качественную продукцию для здоровья каждого члена семьи.\r\n	</li>\r\n</ul>\r\n', '', '', 1465207368, 1465218279, 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `faq`
--

CREATE TABLE `faq` (
  `id` int(11) NOT NULL,
  `question` varchar(200) NOT NULL,
  `answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `text` text,
  `created` int(11) DEFAULT NULL,
  `updated` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `person_type` enum('individual','legal') NOT NULL,
  `fio` varchar(100) NOT NULL,
  `address` varchar(150) DEFAULT NULL,
  `count` varchar(20) DEFAULT NULL,
  `tel` varchar(15) DEFAULT NULL,
  `fax` varchar(15) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `created` int(11) NOT NULL,
  `orders` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id`, `person_type`, `fio`, `address`, `count`, `tel`, `fax`, `email`, `created`, `orders`) VALUES
(3, 'individual', 'Hello Dolly', 'Sputnik, Oltin voha ko''chasi, 10-uy', '2', '998934656567', '', 'hayyoreyoreyore@mail.ru', 0, '<table>\n					<tr>\n						<th>ID продукта </th>\n						<th>Название продукта </th>\n						<th>Количество </th>\n						<th>По цене </th>\n					</tr> <tr> <td>1</td> <td>AquaLife</td> <td>1 шт. </td> <td>6000 сум</td></tr><tr> <td>2</td> <td>Черноголовская</td> <td>4 шт. </td> <td>3000 сум</td></tr> <tr> <td colspan="3">Общая сумма: </td><td>18000</td></tr></table>'),
(4, 'individual', 'Suhrob Saburov', 'Sputnik, Oltin voha ko''chasi, 10-uy', '3', '(998) 975121717', '', 'suhrob@mail.ru', 0, '<table>\n					<tr>\n						<th>ID продукта </th>\n						<th>Название продукта </th>\n						<th>Количество </th>\n						<th>По цене </th>\n					</tr> <tr> <td>1</td> <td>AquaLife</td> <td>7 шт. </td> <td>6000 сум</td></tr><tr> <td>2</td> <td>Черноголовская</td> <td>7 шт. </td> <td>3000 сум</td></tr><tr> <td>4</td> <td>Аквалайф</td> <td>20 шт. </td> <td>800 сум</td></tr> <tr> <td colspan="3">Общая сумма: </td><td>79000</td></tr></table>'),
(5, 'individual', 'Suhrob Saburov', '', '2', '(998) 975121717', '', 'suhrob@mail.ru', 0, '<table>\n					<tr>\n						<th>ID продукта </th>\n						<th>Название продукта </th>\n						<th>Количество </th>\n						<th>По цене </th>\n					</tr> <tr> <td>1</td> <td>AquaLife</td> <td>1 шт. </td> <td>6000 сум</td></tr><tr> <td>2</td> <td>Черноголовская</td> <td>3 шт. </td> <td>3000 сум</td></tr> <tr> <td colspan="3">Общая сумма: </td><td>15000</td></tr></table>'),
(6, 'legal', 'Ургенчский филиал ТУИТ', 'Аль-Хорезми, 110 д', '1', '(998) 62 224 61', '', 'info@ubtuit.uz', 0, '<table>\n					<tr>\n						<th>ID продукта </th>\n						<th>Название продукта </th>\n						<th>Количество </th>\n						<th>По цене </th>\n					</tr> <tr> <td>5</td> <td>Кулер 16L/E</td> <td>5 шт. </td> <td>750000 сум</td></tr> <tr> <td colspan="3">Общая сумма: </td><td>3750000</td></tr></table>'),
(7, 'individual', 'Administrator Admin', '', '3', '(998) 982778866', '', 'webmaster@example.com', 0, '<table>\n					<tr>\n						<th>ID продукта </th>\n						<th>Название продукта </th>\n						<th>Количество </th>\n						<th>По цене </th>\n					</tr> <tr> <td>5</td> <td>Кулер 16L/E</td> <td>1 шт. </td> <td>750000 сум</td></tr><tr> <td>7</td> <td>Кулер 16L/D</td> <td>1 шт. </td> <td>450000 сум</td></tr><tr> <td>8</td> <td>Бутил</td> <td>2 шт. </td> <td>6000 сум</td></tr> <tr> <td colspan="3">Общая сумма: </td><td>1212000</td></tr></table>'),
(8, 'individual', 'Administrator Admin', '', '2', '(998) 982778866', '', 'webmaster@example.com', 0, '<table>\n					<tr>\n						<th>ID продукта </th>\n						<th>Название продукта </th>\n						<th>Количество </th>\n						<th>По цене </th>\n					</tr> <tr> <td>8</td> <td>Бутил</td> <td>6 шт. </td> <td>6000 сум</td></tr><tr> <td>7</td> <td>Кулер 16L/D</td> <td>10 шт. </td> <td>450000 сум</td></tr> <tr> <td colspan="3">Общая сумма: </td><td>4536000</td></tr></table>'),
(9, 'individual', 'Said Jabborov', '', '1', '(998) 958663232', '', 'said@said.com', 0, '<table>\n					<tr>\n						<th>ID продукта </th>\n						<th>Название продукта </th>\n						<th>Количество </th>\n						<th>По цене </th>\n					</tr> <tr> <td>1</td> <td>AquaLife</td> <td>18 шт. </td> <td>6000 сум</td></tr> <tr> <td colspan="3">Общая сумма: </td><td>108000</td></tr></table>');

-- --------------------------------------------------------

--
-- Структура таблицы `profiles`
--

CREATE TABLE `profiles` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `tel` varchar(20) NOT NULL DEFAULT '(998) 9',
  `email` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `profiles`
--

INSERT INTO `profiles` (`user_id`, `first_name`, `last_name`, `tel`, `email`) VALUES
(1, 'Administrator', 'Admin', '(998) 982778866', ''),
(2, 'Sulton', 'Vaisov', '(998) 956021414', ''),
(3, 'Ruslan', 'Sharipov', '(998) 982775856', ''),
(4, 'Said', 'Jabborov', '(998) 958663232', ''),
(5, 'Hello', 'Dolly', '(998) 923221212', ''),
(6, 'Kelly', 'Nelly', '(998) 947586213', ''),
(7, 'Suhrob', 'Saburov', '(998) 975121717', '');

-- --------------------------------------------------------

--
-- Структура таблицы `profiles_fields`
--

CREATE TABLE `profiles_fields` (
  `id` int(11) NOT NULL,
  `varname` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `field_type` varchar(50) NOT NULL DEFAULT '',
  `field_size` int(3) NOT NULL DEFAULT '0',
  `field_size_min` int(3) NOT NULL DEFAULT '0',
  `required` int(1) NOT NULL DEFAULT '0',
  `match` varchar(255) NOT NULL DEFAULT '',
  `range` varchar(255) NOT NULL DEFAULT '',
  `error_message` varchar(255) NOT NULL DEFAULT '',
  `other_validator` text,
  `default` varchar(255) NOT NULL DEFAULT '',
  `widget` varchar(255) NOT NULL DEFAULT '',
  `widgetparams` text,
  `position` int(3) NOT NULL DEFAULT '0',
  `visible` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `profiles_fields`
--

INSERT INTO `profiles_fields` (`id`, `varname`, `title`, `field_type`, `field_size`, `field_size_min`, `required`, `match`, `range`, `error_message`, `other_validator`, `default`, `widget`, `widgetparams`, `position`, `visible`) VALUES
(1, 'first_name', 'First Name', 'VARCHAR', 255, 3, 2, '', '', 'Incorrect First Name (length between 3 and 50 characters).', '', '', '', '', 1, 3),
(2, 'last_name', 'Last Name', 'VARCHAR', 255, 3, 2, '', '', 'Incorrect Last Name (length between 3 and 50 characters).', '', '', '', '', 2, 3),
(3, 'tel', 'Тел', 'VARCHAR', 20, 0, 2, '', '', 'Введите тел. номер', '', '(998) 9', '', '', 3, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_migration`
--

CREATE TABLE `tbl_migration` (
  `version` varchar(255) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tbl_migration`
--

INSERT INTO `tbl_migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1465055578),
('m110805_153437_installYiiUser', 1465055619);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `first_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `created` int(11) DEFAULT NULL,
  `role` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `first_name`, `last_name`, `created`, `role`) VALUES
(1, 'admin', 'b7fd2be7b486e07a2625e39b6d5c6346', 'Administrator', '', NULL, 'administrator');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL DEFAULT '',
  `password` varchar(128) NOT NULL DEFAULT '',
  `email` varchar(128) NOT NULL DEFAULT '',
  `activkey` varchar(128) NOT NULL DEFAULT '',
  `createtime` int(10) NOT NULL DEFAULT '0',
  `lastvisit` int(10) NOT NULL DEFAULT '0',
  `superuser` int(1) NOT NULL DEFAULT '0',
  `status` int(1) NOT NULL DEFAULT '0',
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lastvisit_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `activkey`, `createtime`, `lastvisit`, `superuser`, `status`, `create_at`, `lastvisit_at`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'webmaster@example.com', '0060494a1ef14cf06bce1a9a3d794a5a', 1465055619, 1465218929, 1, 1, '2016-06-04 15:53:39', '0000-00-00 00:00:00'),
(2, 'sulton', 'cf54bd0fb2b2739cb908328a7598bde4', 'sulton@okay.uz', 'c4d777d1363755629fcc4b64405ffa47', 0, 0, 0, 0, '2016-06-05 10:13:31', '0000-00-00 00:00:00'),
(3, 'ruslan', '01e20b61d05bb6b42840997233579e08', 'ruslan@media.uz', '2541668a3f6bd4dc3b9e7fc9399b6281', 0, 0, 0, 0, '2016-06-05 10:18:47', '0000-00-00 00:00:00'),
(4, 'Said', 'b7b791e873f143d5318310e59022175d', 'said@said.com', 'b7797f10cd58864dace60c26d8bfd6f2', 0, 1466446170, 0, 1, '2016-06-05 10:39:05', '0000-00-00 00:00:00'),
(5, 'Hello', '178eca01705c8783999096e912b64287', 'artikovmuzaffar@gmail.com', 'fa651c23d5fe3211d76475d999826ffa', 0, 1465218740, 0, 1, '2016-06-05 10:41:37', '0000-00-00 00:00:00'),
(6, 'Kelly', '7909ee02ba4a7c0558028a58a1a3ed65', 'respect.net@bk.ru', '9dd5ac69b642f58b6467ed42cb9606d7', 0, 0, 0, 0, '2016-06-05 10:44:09', '0000-00-00 00:00:00'),
(7, 'suhrob', 'b3ea642e85d98bbc19806b7fadcc9c8c', 'suhrob@mail.ru', 'd8efca5fd72a405ba2ed51d8483ce162', 0, 1465206802, 0, 1, '2016-06-06 08:11:17', '0000-00-00 00:00:00');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `catalog_category`
--
ALTER TABLE `catalog_category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `catalog_product`
--
ALTER TABLE `catalog_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hash` (`hash`);

--
-- Индексы таблицы `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`user_id`);

--
-- Индексы таблицы `profiles_fields`
--
ALTER TABLE `profiles_fields`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tbl_migration`
--
ALTER TABLE `tbl_migration`
  ADD PRIMARY KEY (`version`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_username` (`username`),
  ADD UNIQUE KEY `user_email` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `catalog_category`
--
ALTER TABLE `catalog_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `catalog_product`
--
ALTER TABLE `catalog_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `content`
--
ALTER TABLE `content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `faq`
--
ALTER TABLE `faq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT для таблицы `profiles`
--
ALTER TABLE `profiles`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT для таблицы `profiles_fields`
--
ALTER TABLE `profiles_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `catalog_product`
--
ALTER TABLE `catalog_product`
  ADD CONSTRAINT `fk_category` FOREIGN KEY (`category_id`) REFERENCES `catalog_category` (`id`);

--
-- Ограничения внешнего ключа таблицы `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `user_profile_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
