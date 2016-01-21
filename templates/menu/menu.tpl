<div>
    <nav class="navbar navbar-default">
        <div class="container">
            <div class="navbar-header">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div>
            </div>
            <div id="navbar" class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                    <?php foreach($Items as $row):?>
                    <li><a href="<?php echo URL.$row['url']?>/"
                           class = "<?php
                            if ($GLOBALS['SiteParams']['CurrentURL'] == $row['url'])
                                echo 'active';
                        ?>"><?php echo $row['title'];?></a></li>
                    <?php endforeach;?>
                    <li><a href="<?=URL;?>admin">Admin</a></li>
                </ul>
            </div>
        </div>
    </nav>
</div>