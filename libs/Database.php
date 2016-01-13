<?php
	/**
	* База Данных
	*/
	class Database
	{
        static public $DB;
        static function connectDB(){
            self::$DB = new PDO("mysql:host=".MYSQL_HOST.";dbname=".MYSQL_DATABASE, MYSQL_USER, MYSQL_PASSWORD, array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8")) OR die('Cannot connect with DB');
        }
	}