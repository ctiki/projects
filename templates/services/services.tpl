<div class="row services-wrapper">
    <h1 class="main-title">Наши услуги</h1>
    <?php for($i = 0; $CategoriesList[$i]; $i++):?>
        <?php if($CategoriesList[$i]['id_parent'] == 0):?>
            <div class="col-xs-12 col-sm-6 col-md-4">
                <div class="services-container">
                    <a href="<?php echo URL;?>services/details/<?=$CategoriesList[$i]['id']?>">
                        <img src="<?=URL_IMAGES;?>services/<?=$CategoriesList[$i]['image'];?>" alt="<?=$CategoriesList[$i]['title'];?>" class="img-responsive">
                        <span class="services-title"><?=$CategoriesList[$i]['title']?></span>
                    </a>
                </div>

                <!--<ul class="list-group">
                    <?php for($j = 0; $CategoriesList[$j]; $j++):?>
                        <?php if($CategoriesList[$j]['id_parent'] == $CategoriesList[$i]['id']):?>
                            <li class="list-group-item"> - <?=$CategoriesList[$j]['title']?></li>
                        <?php endif;?>
                    <?php endfor;?>
                </ul>-->
            </div>
        <?php endif;?>
    <?php endfor;?>
</div>