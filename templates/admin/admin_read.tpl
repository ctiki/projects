<a href="<?=URL;?>admin/create/<?=$TableName;?>" class="button">Добавить</a>
<div class="row">
    <div class="admin-read-table-wrapper">
        <?php if($TableName == 'gallery'): ?>
            <form method="POST" action = "<?=$_SERVER['REQUEST_URI']?>" class="admin-category">
                <select class="form-control input-lg" name = "admin-category">
                    <?php foreach($CategoriesList as $row): ?>
                        <?php if ($row['id_parent'] == 0): ?>
                            <option value="<?=$row['id'];?>" <?php if($_SESSION['admin-category'] == $row['id']) echo 'selected';?>><?=$row['title'];?></option>
                        <?php endif;?>
                    <?php endforeach;?>
                </select>
            </form>
        <?php endif;?>

        <?php if(empty($Errors)):?>
        <table>
            <thead>
                <tr>
                    <?php foreach($Fields as $row): ?>
                        <td>
                            <?=$row['COLUMN_COMMENT'];?>
                        </td>
                    <?php endforeach; ?>
                </tr>
            </thead>
            <tbody>
            <?php foreach($List as $value): ?>
                <tr>
                    <?php foreach($value as $key => $row):?>
                    <td>
                        <?php if ($key == 'url'):?>
                        <img src="<?=URL_IMAGES;?>gallery/<?=$value['eng_title'];?>/<?=$row;?>" alt="<?=$row?>" class="gallery_pre"/>
                        <?php else:?>
                        <?php $row = (mb_strlen($row) > 60) ? mb_substr($row, 0, 40, utf8).'...' : $row;
                        echo $row;
                        ?>
                        <?php endif;?>
                    </td>
                    <?php endforeach;?>
                    <td>
                        <a href="<?=URL;?>admin/update/<?=$TableName;?>/<?=$value['id'];?>"><i class="fa fa-pencil-square-o"></i></a>
                        <a href="<?=URL;?>admin/delete/<?=$TableName;?>/<?=$value['id'];?>"><i class="fa fa-trash-o"></i></a>
                    </td>
                </tr>
            <?php endforeach; ?>
            </tbody>
        </table>
        <div class="pagination-wrapper">
            <?php
        if($TableName == 'gallery')
            echo $Pagination->get();
            ?>
        </div>
        <br/>

        <?php else: ?>
        <h1><?=$Errors;?></h1>
        <?php endif;?>
    </div>
</div>