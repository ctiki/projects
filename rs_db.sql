-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Час створення: Січ 28 2016 р., 00:26
-- Версія сервера: 5.5.47-0ubuntu0.14.04.1
-- Версія PHP: 5.5.9-1ubuntu4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База даних: `rs_db`
--

-- --------------------------------------------------------

--
-- Структура таблиці `about`
--

CREATE TABLE IF NOT EXISTS `about` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ИД',
  `title` varchar(255) DEFAULT NULL COMMENT 'Оглавление',
  `description` text COMMENT 'Описание',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблиці `auto_mark`
--

CREATE TABLE IF NOT EXISTS `auto_mark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(150) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблиці `contacts`
--

CREATE TABLE IF NOT EXISTS `contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ИД',
  `title` varchar(150) DEFAULT NULL COMMENT 'Оглавление',
  `description` varchar(255) DEFAULT NULL COMMENT 'Описание',
  `image` varchar(255) DEFAULT NULL COMMENT 'Изображение',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Дамп даних таблиці `contacts`
--

INSERT INTO `contacts` (`id`, `title`, `description`, `image`) VALUES
(1, 'Телефон', 'kyivstar: +380683048173<br />life:) +380937476646', NULL),
(3, 'Почта', 'rs_tuning@mail.ua', NULL),
(4, 'instagram', 'https://instagram.com/rs_styling_studio', NULL),
(5, 'ВКонтакте', 'https://vk.com/rs_styling_studio', NULL);

-- --------------------------------------------------------

--
-- Структура таблиці `gallery`
--

CREATE TABLE IF NOT EXISTS `gallery` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ИД',
  `title` varchar(150) DEFAULT NULL COMMENT 'Оглавление',
  `description` varchar(255) DEFAULT NULL COMMENT 'Описание',
  `url` varchar(255) DEFAULT NULL COMMENT 'Имя',
  `date` date NOT NULL COMMENT 'Дата',
  `id_category` int(11) NOT NULL COMMENT 'Категория',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `id_category` (`id_category`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=27 ;

--
-- Дамп даних таблиці `gallery`
--

INSERT INTO `gallery` (`id`, `title`, `description`, `url`, `date`, `id_category`) VALUES
(14, 'dfgdfvcb6777', 'апеа', 'ie5r9k-yAcg.jpg', '2016-01-02', 1),
(15, 'dfgdfvcb5', 'апр', '2932.jpg', '2016-01-03', 1),
(18, 'dfgdfvcb', 'апр', '1heqIxNkhqs.jpg', '2016-01-04', 1),
(19, 'cosmos', 'some cosmos', 'b43xXi0YWS8.jpg', '2016-01-05', 2),
(20, 'Диски', 'Покраска дисков с помощью аквапринта', '8Ngq2mMFASk.jpg', '2016-01-06', 1),
(21, 'Aero', 'Aero test', 'qvlxygHxkz4.jpg', '2016-01-07', 2),
(22, 'dfgdfvcb', 'аипа', 'A4iTG8h3cU8.jpg', '2016-01-01', 1),
(23, 'Something', 'всм', 'tox0f6JWSxs.jpg', '2016-01-20', 1),
(24, 'dfg675877', 'dfgdfg', '8asDWrugz6Y.jpg', '2016-01-21', 1),
(25, 'New title', 'Some Description', 'Gm992nSymOM.jpg', '2016-01-21', 1),
(26, 'Last image', 'last image', 'F91Hhf8-DPM.jpg', '2016-01-22', 2);

-- --------------------------------------------------------

--
-- Структура таблиці `main_menu`
--

CREATE TABLE IF NOT EXISTS `main_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(150) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `url` varchar(250) DEFAULT NULL,
  `enable` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Дамп даних таблиці `main_menu`
--

INSERT INTO `main_menu` (`id`, `title`, `description`, `url`, `enable`) VALUES
(1, 'Главная', 'Главная страница', 'main', 1),
(2, 'Услуги', 'Список услуг', 'services', 1),
(3, 'Галерея', 'Галерея работ', 'gallery', 1),
(4, 'О нас', 'Общая информация о компании', 'info', 1),
(5, 'Контакты', 'Способы связи с компанией', 'contacts', 1);

-- --------------------------------------------------------

--
-- Структура таблиці `services`
--

CREATE TABLE IF NOT EXISTS `services` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ИД',
  `title` varchar(150) DEFAULT NULL COMMENT 'Оглавление',
  `description` text COMMENT 'Описание',
  `id_parent` int(11) DEFAULT NULL COMMENT 'Род. категория',
  `eng_title` varchar(150) NOT NULL COMMENT 'Англ. название',
  `image` varchar(100) NOT NULL COMMENT 'Изображение',
  `enable` tinyint(1) DEFAULT '1' COMMENT 'Вкл',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Дамп даних таблиці `services`
--

INSERT INTO `services` (`id`, `title`, `description`, `id_parent`, `eng_title`, `image`, `enable`) VALUES
(1, 'Аквапринт', 'Аквапринт (aquaprint)– это современная технология защитно-декоративного покрытия, которая придаёт Вашему автомобилю неповторимый стиль и оригинальность!\r\nТехнология нанесения декоративных покрытий с помощью давления воды на изделия самой сложной формы, изготовленные из широкого спектра материалов: пластмасса, металлы и сплавы, дерево, МДФ, фанера, стекло и керамика, композитные материалы и др.\r\nТехнология аквапечати применяется для отделки автомобилей, яхт, самолетов, электроники, мебели и предметов интерьера, военной аммуниции, обуви и многих других видов продукции.\r\nШирокое разнообразие вариантов исполнения – карбон, камень, ценные породы дерева, титан, мех, кожа рептилий и т.д.\r\nБолее 250 видов текстур и более 10 000 вариантов сочетаний.\r\nТак же данное покрытие используется главным образом для восстановления поцарапанных, прожженных, сломанных поверхностей\r\nДекоративная отделка устойчива к воздействию солнечных лучей, вибрации, высоких и низких температур (от -50 С до +100 С), ультрафиолетового излучения, морской воды, растворителей и других агрессивных сред . Она не стирается, не реагирует на воздействие химикатов — бензина и масла. На покрытии не возникает трещин, покрытие не отслаивается со временем! При неглубоких царапинах или попадании грязи поверхность легко отполировать до первоначального блеска.\r\n', 0, 'aquaprint', 'maxresdefault.jpg', 1),
(2, 'Аэрография', 'Аэрография - это самый эффектный способ выделить свой автомобиль и подчеркнуть его индивидуальность. Так же аэрография является хорошей защитой от делились, мы сможем подобрать для Вас наиболее привлекательный и подходящий вариант.', 0, 'airbrushing', 'tanque-de-moto-aerografo.jpg', 1),
(3, 'Оклейка защитной пленкой ', 'Автомобильная защитная пленка создана специально для защиты кузова от внешних механических воздействий. Чаще всего этот вид пленки не отличается особыми внешними эффектами. Его задача – незаметно и надежно предохранять кузов автомобиля от царапин, сколов и других случайных повреждений.\r\nПрофессиональная оклейка защитной пленкой позволит спасти машину от дорожной гальки, веток, агрессивных химических реагентов и любителей провести острыми предметами по лакированному борту любимого автомобиля.Прозрачные автомобильные плёнки отличается великолепной прочностью, не меняет цвет с течением времени, легко подворачивается под любую геометрию поверхности и великолепно держится на кузове. Качественная оклейка автомобиля защитной пленкой придает глубокий блеск заводскому покрытию машины, отличается длительным сроком службы и гарантированно защищает лак.', 0, 'guardmembrane', 'EmeMwdRqTSQ.jpg', 1),
(4, 'Оклейка винилом', 'Виниловая пленка представляет собой отличную альтернативу покраске автомобиля, так как данная процедура обходится не только дешевле, но и занимает меньше времени, а конечным результатом становится оригинальный внешний вид автомобиля.\r\nВинилография — это еще и замена аэрографии. Ведь с помощью пленки можно создать любой по сложности рисунок, произвести его ламинацию и затем перенести на кузов автомобиля. Этот вариант обойдется намного дешевле аэрографии, к тому же рисунок в любой момент можно будет удалить либо поменять его на новое изображение.\r\nЧастичная оклейка виниловой пленкой автомобиля — это еще и один из вариантов экономичного вида тюнинга. Так, может быть проведена тонировка стекол, обтяжка пленкой капота, багажника, спойлера или крыши машины.', 0, 'vinyl', '01-meguires-wrap-630op.jpg', 1),
(5, 'Тонировка', 'Современное тонирование пленкой отличается высочайшим качеством. Тонировка автомобиля пленкой имеет ряд важных преимуществ перед другими способами тонирования стекол, такими, как тонирование напылением или тонирование при помощи установки цветных стекол.\r\nТонирование авто при помощи пленок занимает минимальное время. При тонировке пленкой стекла не демонтируются, что не только экономит время, но и снижает риск повреждения поверхности стекол. Тонировка пленкой легко снимается, при этом стекла сохраняют первоначальный вид.\r\n\r\nТонировка автомобиля - один из основных видов деятельности нашей компании.\r\nОсновные преимущества тонирования стекол\r\n- доступный и простой вид тюнинга автомобиля - стильный и эстетичный автомобиль;\r\n- уменьшение влияния ультрафиолетовых лучей на салон - салон не выгорает и не изнашивается;\r\n- обеспечение приватности - сокрытие салона от посторонних глаз;\r\n- увеличение безопасности - тонированные стекла не рассыпаются и не растрескиваются.', 0, 'tinting', 'c700x420.jpg', 1),
(6, 'Пескоструйная обработка', 'Пескоструйная обработка - это самая качественная очистка металлических и иных поверхностей (кирпич,бетон, дерево, стекло) от окалины, продуктов коррозии, нагара,нефтепродуктов затвердевших и не затвердевших  (мазут, битум), многослойных старых  лакокрасочных покрытий.\r\nПроцесс пескоструйной обработки представляет собой бомбардировку потоком абразивного материала, имеющим очень высокую кинетическую энергиию,  подготавливаемой поверхности.', 0, 'sandwork', 'sandwork.jpg', 1),
(7, 'Декор салона авто', NULL, 1, '', '', 1),
(8, 'Тюнинг дисков', NULL, 1, '', '', 1),
(9, 'Броне пленка', NULL, 3, '', '', 1),
(10, 'Антигравийная пленка', NULL, 3, '', '', 1),
(11, 'Карбон', NULL, 4, '', '', 1),
(12, 'Глянец', NULL, 4, '', '', 1),
(13, 'Матовые оттенки', NULL, 4, '', '', 1);

-- --------------------------------------------------------

--
-- Структура таблиці `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(150) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп даних таблиці `users`
--

INSERT INTO `users` (`id`, `login`, `password`, `status`) VALUES
(1, 'fOIuO3KChjG4GgTr/97PcDGXhjoMI7QwmHkM9o3MkRc=', 'fOIuO3KChjG4GgTr/97PcDGXhjoMI7QwmHkM9o3MkRc=', 'admin');

--
-- Обмеження зовнішнього ключа збережених таблиць
--

--
-- Обмеження зовнішнього ключа таблиці `gallery`
--
ALTER TABLE `gallery`
  ADD CONSTRAINT `gallery_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `services` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
