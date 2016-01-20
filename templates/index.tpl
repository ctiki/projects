<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <meta name="generator" content="MY CMS" />
    <meta name="description" content="<?php echo $Description; ?>" />
    <meta name="keywords" content="<?php echo $Keywords; ?>" />
    <meta charset="UTF-8">
    <title><?php echo $Title; ?></title>
    <link rel="stylesheet" type="text/css" href="<?php echo URL;?>public/css/style.css" />
    <script src="<?php echo URL?>public/js/jquery-1.11.3.js"></script>
    <link rel="stylesheet" type="text/css" href="<?php echo URL;?>public/css/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="<?php echo URL;?>public/css/bootstrap/css/bootstrap-responsive.min.css" />
    <script type="text/javascript" src="<?php echo URL;?>public/css/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
<div class="header">
    <?php echo HeaderFooter::getMenuView();?>
</div>
<div class="container-fluid">
    <?php echo $Content;?>
</div>
<footer>
    <?php echo HeaderFooter::getFooterView();?>
</footer>
<script src="<?php echo URL?>public/js/script.js"></script>

</body>

</html>