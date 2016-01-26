<h1 class="main-title">Галерея</h1>
<div class="row">
    <div class="col-sm-3 cat-gallery">
        <div class="gallery-categories-wrapper">
            <hr>
            категории
            <hr>
            <a href="<?=URL;?>gallery/view/all/page-1" class="<?php if ($CategoryName == 'all') echo 'active';?>">
                <div>
                    Все
                </div>
            </a>
            <?php foreach($CategoriesList as $row):?>
                <?php if($row['id_parent'] == 0):?>
                    <a href="<?=URL;?>gallery/view/<?=$row['eng_title'];?>/page-1" class="<?php if ($row['eng_title'] == $CategoryName) echo 'active';?>">
                        <div class="gallery-categories-item">
                            <?=$row['title'];?>
                        </div>
                    </a>
                <?php endif;?>
            <?php endforeach;?>
            <hr>
            сортировка
            <hr>
            <form method="POST" action = "<?=$_SERVER['REQUEST_URI']?>" class="sorting">
                <select class="form-control input-lg" name = "sorting">
                    <?php foreach($Order as $row): ?>
                        <option value="<?=$row['value'];?>" <?php if($_SESSION['order']['value'] == $row['value']) echo 'selected';?>><?=$row['title'];?></option>
                    <?php endforeach;?>
                </select>
                <br/>
            </form>
        </div>
    </div>

    <div class="col-sm-9 main-gallery">
        <?php if(empty($Errors)):?>
            <div class="row gallery_wrapper">
                <?php foreach($Gallery as $row):?>
                    <div class="gallery_items col-xs-6 col-sm-6 col-md-4 col-lg-4">
                        <div class="gallery_image_wrapper">
                            <img src="<?=URL_IMAGES;?>gallery/<?=$row['eng_title'];?>/<?=$row['url'];?>" alt="<?=$row['title'];?>" class="img-responsive"/>
                        </div>
                        <?=$row['date'];?>
                        <a href="<?=URL;?>gallery/details/<?=$row['id'];?>">Детали</a>
                    </div>
                <?php endforeach;?><br/>
            </div>
            <div class="pagination-wrapper">
                <?php echo $Pagination->get();?>
            </div>
        <?php else:?>
            <?php echo $Errors;?>
        <?php endif;?>
    </div>
</div>
