<form action="<?=URL?>admin/confirmCreate/<?=$TableName;?>" method="post" enctype="multipart/form-data">
    <label for="title">Оглавление</label>
    <input type="text" name="title" id="title"/><br/>
    <label for="description">Описание</label>
    <textarea name="description" id="description" cols="30" rows="10"></textarea><br/>
    <label for="id_parent">Категория</label>
    <select id="id_parent" name="id_parent">
        <?php foreach($Categories as $row): ?>
        <?php if($row['id_parent'] == 0): ?>
            <option value="<?=$row['id'];?>"><?=$row['title'];?></option>
        <?php endif;?>
        <?php endforeach;?>
        <option value="NULL">Главная</option>
    </select><br/>
    <button type="submit">добавить</button>
</form>