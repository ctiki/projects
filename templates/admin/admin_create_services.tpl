<form action="<?=URL;?>admin/confirmCreate/<?=$TableName;?>" method="post" enctype="multipart/form-data" class="form-horizontal">
    <div class="col-sm-4">
        <div class="row">
            <div class="form-group">
                <label for="title" class="col-sm-4 control-label">Оглавление</label>
                <div class="col-sm-8">
                    <input type="text" class="form-control" id="title" placeholder="оглавление" name="title">
                </div>
            </div>
            <div class="form-group">
                <label for="id_parent" class="col-sm-4 control-label">Категория</label>
                <div class="col-sm-8">
                    <select id="id_parent" name="id_parent" class="form-control">
                        <?php foreach($Categories as $row): ?>
                            <?php if($row['id_parent'] == 0): ?>
                                <option value="<?=$row['id'];?>"><?=$row['title'];?></option>
                            <?php endif;?>
                        <?php endforeach;?>
                        <option value="NULL">Главная</option>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-4 col-sm-8">
                    <button type="submit" class="form-control btn btn-default">Создать</button>
                </div>
            </div>
        </div>

    </div>
    <div class="col-sm-offset-1 col-sm-7">
        <div class="row">
            <div class="form-group">
                <div class="col-sm-12">
                    <textarea name="description" id="description" cols="30" rows="10" class="form-control" placeholder="описание"></textarea>
                </div>
            </div>
        </div>
    </div>
</form>