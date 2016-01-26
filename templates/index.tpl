<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <meta name="generator" content="MY CMS" />
    <meta name="description" content="<?=$Description; ?>" />
    <meta name="keywords" content="<?=$Keywords; ?>" />
    <meta charset="UTF-8">
    <title><?php echo $Title; ?></title>

    <script src="<?php echo URL?>public/js/jquery-1.11.3.js"></script>

    <link rel="stylesheet" type="text/css" href="<?=URL;?>public/css/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="<?=URL;?>public/css/fonts/font-awesome/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="<?=URL;?>public/css/bootstrap/css/bootstrap-responsive.min.css" />
    <link rel="stylesheet" type="text/css" href="<?=URL;?>public/css/style.css"/>
    <script type="text/javascript" src="<?=URL;?>public/css/bootstrap/js/bootstrap.min.js"></script>

</head>
<body>
    <div class="container-fluid">
        <?php require 'slider/slider.tpl';?>
    </div>
    <div class="header">
        <?=HeaderFooter::getMenuView();?>
    </div>
    <div class="container">
        <?=$Content;?>
    </div>
    <footer>
        <?=HeaderFooter::getFooterView();?>
    </footer>
    <script src="<?=URL;?>public/js/script.js"></script>
    <script src="<?=URL;?>public/css/bootstrap/js/bootstrap-formhelpers.min.js"></script>

</body>

</html>