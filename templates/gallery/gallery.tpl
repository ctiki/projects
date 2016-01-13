<div>
   <h1>Inner Gallery Page</h1>
    <div class="gallery_cat">
    <?php foreach($CategoriesList as $row):?>
        <?php if($row['id_parent'] == 0):?>
            <a href="<?=URL;?>gallery/view/<?=$row['eng_title'];?>/page-1">
                <div>
                    <?=$row['title'];?>
                </div>
            </a>
        <?php endif;?>
    <?php endforeach;?>
    </div>
</div>