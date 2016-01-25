    <div class="row">
        <h1 class="main-title">Добро пожаловать</h1>
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus aperiam consectetur deserunt est, et eveniet facere impedit ipsam itaque nesciunt numquam omnis porro quae quibusdam quisquam sint, sunt voluptas voluptate!</p>
        <div class="title-block">
            <h1 class="main-title">Почему мы</h1>
        </div>
        <div class="col-xs-12 col-sm-6 col-md-4">
            <div class="reasons">
                1
            </div>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Qui, sequi.</p>
        </div>
        <div class="col-xs-12 col-sm-6 col-md-4">
            <div class="reasons">
                2
            </div>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Autem, consequuntur?</p>
        </div>
        <div class="col-xs-12 col-sm-6 col-md-4">
            <div class="reasons">
                3
            </div>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consequatur, cumque.</p>
        </div>
    </div>
    <div class="row">
        <div class="title-block">
            <h1 class="main-title">Последние работы</h1>
        </div>
        <div class="last-works-wrapper">
            <?php foreach($LastWorks as $row): ?>
            <div class="col-xs-12 col-sm-6 col-md-4 last-works">
                <div class="img_main_pre">
                    <i class="fa fa-search fa-5x img-search"></i>
                    <img class="img-responsive" src="<?=URL_IMAGES;?>gallery/<?=$row['eng_title'];?>/<?=$row['url'];?>" alt="<?=$row['title'];?>">
                </div>
                <p>
                    <a href="<?=URL;?>gallery/details/<?=$row['id'];?>"><?=$row['title'];?></a>
                    <small><?=$row['date'];?></small>
                </p>
            </div>
            <?php endforeach; ?>
        </div>
        <div class="button center-block clear button"><a href="<?=URL;?>gallery/view/all/page-1">Больше</a></div>
    </div>
