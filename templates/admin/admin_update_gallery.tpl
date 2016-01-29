<form action="<?=URL?>admin/confirmUpdate/<?=$TableName;?>/<?=$UpdateRecord['id'];?>" method="post" enctype="multipart/form-data" class="form-horizontal">
    <div class="col-sm-4">
        <div class="row">
            <div class="form-group">
                <label for="title" class="col-sm-4 control-label">Оглавление</label>
                <div class="col-sm-8">
                    <input type="text" class="form-control" id="title" placeholder="оглавление" name="title" value="<?=$UpdateRecord['title'];?>">
                </div>
            </div>
            <div class="form-group">
                <label for="id_category" class="col-sm-4 control-label">Категория</label>
                <div class="col-sm-8">
                    <select id="id_category" name="id_category" class="form-control">
                        <?php foreach($Categories as $row): ?>
                        <option value="<?=$row['id'];?>"
                            <?php if($row['id'] == $UpdateRecord['id_category'])
                                echo 'selected';
                            ?>><?=$row['title'];?>
                        </option>
                        <?php endforeach;?>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-4 control-label">Превью</label>
                <div class="col-sm-8">
                    <img src="<?=URL_IMAGES;?>gallery/<?=$UpdateRecord['eng_title'];?>/<?=$UpdateRecord['url'];?>" alt="<?=$UpdateRecord['url']?>" class="gallery_pre"/>
                </div>
            </div>
            <div class="form-group">
                <label for="gallery_image" class="col-sm-4 control-label">Изображение</label>
                <div class="col-sm-8">
                    <input type="file" name="gallery_image" id="" class="form-group" style="float: right">
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-4 col-sm-8">
                    <button type="submit" class="form-control btn btn-default">Обновить</button>
                </div>
            </div>
        </div>
    </div>
    <div class="col-sm-offset-1 col-sm-7">
        <div class="row">
            <div class="form-group">
                <div class="col-sm-12">
                    <textarea name="description" id="description" cols="30" rows="10" class="form-control" placeholder="описание"><?=$UpdateRecord['description'];?></textarea>
                </div>
            </div>
        </div>
    </div>
</form>