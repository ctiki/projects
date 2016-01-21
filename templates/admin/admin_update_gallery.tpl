<form action="<?=URL?>admin/confirmUpdate/<?=$TableName;?>/<?=$UpdateRecord['id'];?>" method="post" enctype="multipart/form-data">
    <label for="title">Оглавление</label>
    <input type="text" name="title" id="title" value="<?=$UpdateRecord['title'];?>"/><br>
    <label for="description">Описание</label>
    <textarea name="description" id="description" cols="30" rows="10"><?=$UpdateRecord['description'];?></textarea><br/>
    <label for="id_category">Категории</label>
    <select id="id_category" name="id_category">
        <?php foreach($Categories as $row): ?>
        <option value="<?=$row['id'];?>"
        <?php if($row['id'] == $UpdateRecord['id_category'])
                echo 'selected';
            ?>><?=$row['title'];?>
        </option>
        <?php endforeach;?>
    </select><br/>
    <img src="<?=URL_IMAGES;?>gallery/<?=$UpdateRecord['eng_title'];?>/<?=$UpdateRecord['url'];?>" alt="<?=$UpdateRecord['url']?>" class="gallery_pre"/><br/>
    <input type="file" name="gallery_image" id="gallery_image"><br/>
    <button type="submit">Изменить</button>
</form>