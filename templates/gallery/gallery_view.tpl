<div>
   <h1>Hello You Are Inside Gallery View Page</h1>
    <div class="gallery_wrapper">
        <?php $Errors;?>
        <?php foreach($Gallery as $row):?>
            <div class="gallery_items">
                <img src="<?=URL_IMAGES;?>gallery/<?=$row['eng_title'];?>/<?=$row['url'];?>" alt="<?=$row['title'];?>"/>
            </div>
        <?php endforeach;?>
        <?php echo $Pagination->get();?>
    </div>
</div>