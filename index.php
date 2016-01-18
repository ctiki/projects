<?php
    require 'config/config.php';

    function __autoload($class)
    {
        require LIBS.$class.'.php';
    }


	Session::ini();

	$app = new Bootstrap();

	function parsedField($field)
	{
		return $field = stripslashes(trim(htmlspecialchars($field)));
	};