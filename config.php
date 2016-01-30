<?php
//phpinfo();
	Error_Reporting(E_ALL & ~E_NOTICE);//не выводить предупреждения
    $site_path = dirname(dirname(__FILE__)) . DIRECTORY_SEPARATOR;
    $server_name = $_SERVER['SERVER_NAME'];
    ini_set('display_errors', 1);
	//константы для подключения к базе данных
	define('MYSQL_HOST', 'mysql.hostinger.com.ua'); 		//сервер
    define('MYSQL_DATABASE', 'u785520860_main');		//база
	define('MYSQL_USER', 'u785520860_nazi'); 			//пользователь
	define('MYSQL_PASSWORD', 'w228843w'); 			//пароль

    define('LIBS', $site_path.'libs/');
    define('GALLERY', $site_path.'public/images/gallery/');
    define('URL_APPLICATION', $site_path.'application/');
	define('URL', 'http://'.$server_name.'/rsstyling/');
	define('URL_IMAGES', 'http://'.$server_name.'/rsstyling/public/images/');
    define ('HASH_KEY', 'ROMANSKOROBOGATOVSTYLINGSTUDIO');
    define ('ADMIN_MAIL', 'ctikitsg@gmail.com');


    $SiteParams = array(
        'SiteName' => 'ШОТО',
        'Keywords' => 'Ключ. слова',
        'Description' => 'Описание',
        'Title'   => 'Главная страница',
        'Error'   => 'Извените произошла ошибка'
    );