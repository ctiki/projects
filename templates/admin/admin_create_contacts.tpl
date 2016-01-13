<form action="<?=URL?>admin/confirmCreate/<?=$TableName;?>" method="post">
    <label for="title">Оглавление</label>
    <input type="text" name="title" id="title"/><br/>
    <label for="description">Описание</label>
    <textarea name="description" id="description" cols="30" rows="10"></textarea><br/>
    <button type="submit">добавить</button>
</form>