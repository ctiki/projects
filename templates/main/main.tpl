<div class="row main">
    <h1>Inner Main Page</h1><br/>
    <?php foreach($LastWorks as $row): ?>
        <div class="col-xs-12 col-sm-6 col-md-4">
            <div class="img_main_pre">
                <img  class="img-responsive" src="<?=URL_IMAGES;?>gallery/<?=$row['eng_title'];?>/<?=$row['url'];?>" alt="<?=$row['title'];?>">
            </div>
                <p>
                    <?=$row['title'];?><br>
                    <small><?=$row['date'];?></small>
                </p>
        </div>
    <?php endforeach; ?>
    <div class="button center-block clear">See more</div>
</div>
