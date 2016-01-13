<div>
   <h1>Inner Services Page</h1>
    <?php for($i = 0; $CategoriesList[$i]; $i++):?>
        <?php if($CategoriesList[$i]['id_parent'] == 0):?>
            <div>
                <a href="<?php echo URL;?>services/details/<?=$CategoriesList[$i]['id']?>"><h3 class="text-uppercase"><?=$CategoriesList[$i]['title']?></h3></a>
                <ul class="list-group">
                    <?php for($j = 0; $CategoriesList[$j]; $j++):?>
                    <?php if($CategoriesList[$j]['id_parent'] == $CategoriesList[$i]['id']):?>
                        <li class="list-group-item"> - <?=$CategoriesList[$j]['title']?></li>
                    <?php endif;?>
                    <?php endfor;?>
                </ul>
            </div>
        <?php endif;?>
    <?php endfor;?>
</div>