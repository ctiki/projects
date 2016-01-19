<a href="<?=URL;?>admin/create/<?=$TableName;?>" class="button">Добавить</a>
<?php if(empty($Errors)):?>
    <table>
        <thead>
            <tr>
<?php print_r($Fields);?>
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
                                <?php $row = (mb_strlen($row) > 60) ? mb_substr($row, 0, 50, utf8).'...' : $row;
                                    echo $row;
                                ?>
                            <?php endif;?>
                        </td>
                    <?php endforeach;?>
                    <td>
                        <a href="<?=URL;?>admin/update/<?=$TableName;?>/<?=$value['id'];?>">U</a>
                        <a href="<?=URL;?>admin/delete/<?=$TableName;?>/<?=$value['id'];?>">D</a>
                    </td>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table><br/>
<?php
    if($TableName == 'gallery')
        echo $Pagination->get();
?>
<?php else: ?>
    <h1><?=$Errors?></h1>
<?php endif;?>