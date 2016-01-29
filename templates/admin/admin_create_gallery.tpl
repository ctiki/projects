<form action="<?=URL;?>admin/upload/<?=$TableName;?>" method="post" enctype="multipart/form-data" class="form-horizontal">
    <div class="col-sm-4">
        <div class="row">
            <div class="form-group">
                <label for="title" class="col-sm-4 control-label">Оглавление</label>
                <div class="col-sm-8">
                    <input type="text" class="form-control" id="title" placeholder="оглавление" name="title">
                </div>
            </div>
            <div class="form-group">
                <label for="id_category" class="col-sm-4 control-label">Категория</label>
                <div class="col-sm-8">
                    <select class="form-control" id="id_category" name="id_category">
                        <?php foreach($Categories as $row): ?>
                        <?php if ($row['id_parent'] == 0):?>
                            <option value="<?=$row['id'];?>"><?=$row['title'];?></option>
                        <?php endif;?>
                        <?php endforeach;?>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label for="gallery_image" class="col-sm-4 control-label">Изображение</label>
                <div class="col-sm-8" style="float: right">
                    <input type="file" name="gallery_image" id="" class="form-group">
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