<form action="<?=URL?>admin/confirmUpdate/<?=$TableName;?>/<?=$UpdateRecord['id'];?>" method="post">
    <label for="title">Оглавление</label>
    <input type="text" name="title" id="title" value="<?=$UpdateRecord['title'];?>"/><br/>
    <label for="description">Описание</label>
    <textarea name="description" id="description" cols="30" rows="10"><?=$UpdateRecord['description'];?></textarea><br/>
    <button type="submit">изменить</button>
</form>