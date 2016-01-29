<?php if(empty($Errors)): ?>
<div class="row">
    <div class="col-sm-8">
        <a href="<?=URL_IMAGES;?>gallery/<?=$Record['eng_title'];?>/<?=$Record['url'];?>" data-lightbox="example-1" data-title="<?=$Record['title'];?>">
            <img src="<?=URL_IMAGES;?>gallery/<?=$Record['eng_title'];?>/<?=$Record['url'];?>" alt="<?=$Record['title'];?>" class="img-responsive">
        </a>
    </div>
    <div class="col-sm-4">
        <h1><?=$Record['title'];?></h1>
        <hr>
        <h4>Категория: <a href="<?=URL;?>gallery/view/<?=$Record['eng_title'];?>/page-1"><?=$Record['services_title'];?></a></h4>
        <p><h4>Описание:</h4> <?=$Record['description'];?></p>
        <small>Дата: <?=$Record['date'];?></small>
    </div>
    <?php else: ?>
    <?=$Eroors;?>
    <?php endif;?>
</div>