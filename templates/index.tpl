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

    <script src="<?=URL;?>public/js/jquery-1.11.3.js"></script>

    <link href="<?=URL_IMAGES;?>/icon.png" rel="shortcut icon" type="image/x-icon" />
    <link rel="stylesheet" type="text/css" href="<?=URL;?>public/css/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="<?=URL;?>public/css/fonts/font-awesome/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="<?=URL;?>public/css/bootstrap/css/bootstrap-responsive.min.css" />
    <link rel="stylesheet" type="text/css" href="<?=URL;?>public/resslider/responsiveslides.css" />
    <link rel="stylesheet" type="text/css" href="<?=URL;?>public/css/style.css"/>
    <link rel="stylesheet" type="text/css" href="<?=URL;?>public/lightbox/dist/css/lightbox.css" >
</head>
    <body>
        <?php if($GLOBALS['SiteParams']['CurrentURL'] == 'main'): ?>
            <header>
                <?php require 'slider/slider.tpl';?>
            </header>
        <?php else: ?>
        <header>
            <span class="header-info">
                <?=$GLOBALS['SiteParams']['SiteName'];?>
            </span>
            <img src="<?=URL_IMAGES;?>header.png" alt="header" class="img-responsive"/>
        </header>
        <?php endif;?>
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
        <script src="<?=URL;?>public/resslider/responsiveslides.js"></script>
        <script src="<?=URL;?>public/css/bootstrap/js/bootstrap-formhelpers.min.js"></script>
        <script type="text/javascript" src="<?=URL;?>public/css/bootstrap/js/bootstrap.min.js"></script>
        <script src="<?=URL;?>public/lightbox/dist/js/lightbox.js"></script>
    </body>

</html>