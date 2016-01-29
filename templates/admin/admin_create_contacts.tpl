<form action="<?=URL?>admin/confirmCreate/<?=$TableName;?>" method="post" class="form-horizontal">
    <div class="col-sm-4">
        <div class="row">
            <div class="form-group">
                <label for="title" class="col-sm-4 control-label">Оглавление</label>
                <div class="col-sm-8">
                    <input type="text" class="form-control" id="title" placeholder="оглавление" name="title">
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
                    <textarea name="description" id="description" cols="30" rows="10" class="form-control" placeholder="описание"></textarea><br/>
                </div>
            </div>
        </div>
    </div>
</form>