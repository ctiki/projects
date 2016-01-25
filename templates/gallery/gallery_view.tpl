    <h1>Inner Gallery Page</h1>

    <div class="row">
        <div class="col-sm-3 col-offset-1">
            <div class="gallery_cat">
                <a href="<?=URL;?>gallery/view/all/page-1" class="<?php if ($CategoryName == 'all') echo 'active';?>">
                    <div>
                        Все
                    </div>
                </a>
                <?php foreach($CategoriesList as $row):?>
                    <?php if($row['id_parent'] == 0):?>
                        <a href="<?=URL;?>gallery/view/<?=$row['eng_title'];?>/page-1" class="<?php if ($row['eng_title'] == $CategoryName) echo 'active';?>">
                            <div>
                                <?=$row['title'];?>
                                <?=$row['eng_title'];?>
                            </div>
                        </a>
                    <?php endif;?>
                <?php endforeach;?>
            </div>
        </div>

        <div class="col-sm-8 main-gallery">
                <?php if(empty($Errors)):?>
                    <div class="row gallery_wrapper">
                        <?php foreach($Gallery as $row):?>
                            <div class="gallery_items col-xs-6 col-sm-6 col-md-4 col-lg-4">
                                <div class="gallery_image_wrapper">
                                    <img src="<?=URL_IMAGES;?>gallery/<?=$row['eng_title'];?>/<?=$row['url'];?>" alt="<?=$row['title'];?>" class="img-responsive"/>
                                </div>
                                <a href="<?=URL;?>gallery/details/<?=$row['id'];?>" class="button">Читать</a>
                            </div>
                        <?php endforeach;?><br/>
                    </div>
                    <?php echo $Pagination->get();?>
                <?php else:?>
                    <?php echo $Errors;?>
                <?php endif;?>
            </div>
    </div>
