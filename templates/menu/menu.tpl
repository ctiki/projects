<div>
    <ul>
        <?php foreach($Items as $row):?>
        <li><a href="<?php echo URL.$row['url']?>/"
               class = "<?php
                            if ($GLOBALS['SiteParams']['CurrentURL'] == $row['url'])
                                echo 'active';
                        ?>"><?php echo $row['title'];?></a></li>
        <?php endforeach;?>
    </ul>
</div>