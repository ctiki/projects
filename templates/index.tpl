<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
    <meta name="generator" content="MY CMS" />
    <meta name="description" content="<?php echo $Description; ?>" />
    <meta name="keywords" content="<?php echo $Keywords; ?>" />
    <meta charset="UTF-8">
    <title><?php echo $Title; ?></title>
    <link rel="stylesheet" type="text/css" href="<?php echo URL;?>public/css/style.css" />
    <script src="<?php echo URL?>public/js/jquery-1.11.3.js"></script>
    <link rel="stylesheet" type="text/css" href="/modules-alien/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="/modules-alien/bootstrap/css/bootstrap-responsive.min.css" />
    <script type="text/javascript" src="/modules-alien/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
<div class="navbar">
    <?php echo Menu::getMenuView();?>
    <a href="<?=URL;?>admin" class="button">Admin</a><br/>
</div>
<div class="container">
    <div class="row">
        <div>
            <?php echo $Content;?>
        </div>
    </div>
</div>
</body>
</html>