<form action="<?=URL?>admin/confirmUpdate/<?=$TableName;?>/<?=$UpdateRecord['id'];?>" method="post" enctype="multipart/form-data">
    <label for="title">Оглавление</label>
    <input type="text" name="title" id="title" value="<?=$UpdateRecord['title'];?>"/><br/>
    <label for="description">Описание</label>
    <textarea name="description" id="description" cols="30" rows="10"><?=$UpdateRecord['description'];?></textarea><br/>
    <label for="id_parent">Категория</label>
    <select id="id_category" name="id_parent">
        <?php foreach($Categories as $row): ?>
            <?php if($row['id_parent'] == 0):?>
                <option value="<?=$row['id'];?>"<?php if($row['id'] == $UpdateRecord['id_parent'])echo 'selected';?>><?=$row['title'];?></option>
            <?php endif;?>
        <?php endforeach;?>
        <option value="NULL">Главная</option>
    </select><br/>
    <button type="submit">изменить</button>
</form>