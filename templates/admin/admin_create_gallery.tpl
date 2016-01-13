<form action="<?=URL;?>admin/upload/" method="post" enctype="multipart/form-data">
    <label for="title">Оглавление</label>
    <input type="text" name="title" id="title"/>
    <label for="description">Описание</label>
    <textarea name="description" id="description" cols="30" rows="10"></textarea><br/>
    <label for="id_category">Категории</label>
    <select id="id_category" name="id_category">
        <?php foreach($Categories as $row): ?>
            <option value="<?=$row['id'];?>"><?=$row['title'];?></option>
        <?php endforeach;?>
    </select><br/>
    <input type="file" name="gallery_image" id=""><br/>
    <button type="submit">добавить</button>
</form>