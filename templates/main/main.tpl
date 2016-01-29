    <div class="row reasons-wrapper">
        <h1 class="main-title">Добро пожаловать</h1>
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias assumenda consequuntur cumque deleniti eveniet id iste iusto, laudantium molestiae non quam quod quos repellat sunt tenetur, ullam, vel veniam voluptatem.</p>
        <p>Как-то так, кароче.</p>
        <div class="title-block">
            <h1 class="main-title">Почему мы</h1>
        </div>
        <div class="col-xs-12 col-sm-6 col-md-4">
            <div class="reasons">
                <i class="fa fa-car fa-5x"></i>
            </div>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Qui, sequi.</p>
        </div>
        <div class="col-xs-12 col-sm-6 col-md-4">
            <div class="reasons">
                <i class="fa fa-thumbs-up fa-5x"></i>
            </div>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Autem, consequuntur?</p>
        </div>
        <div class="col-xs-12 col-sm-6 col-md-4">
            <div class="reasons">
                <i class="fa fa-clock-o fa-5x"></i>
            </div>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consequatur, cumque.</p>
        </div>
    </div>
    <div class="row last-works-container">
        <div class="title-block">
            <h1 class="main-title">Последние работы</h1>
        </div>
        <div class="last-works-wrapper">
            <?php foreach($LastWorks as $row): ?>
            <div class="col-xs-12 col-sm-6 col-md-4">
                <div class="last-works">
                    <div class="img_main_pre">
                        <a href="<?=URL_IMAGES;?>gallery/<?=$row['eng_title'];?>/<?=$row['url'];?>" data-lightbox="example-set" data-title="<?=$row['title'];?>">
                            <i class="fa fa-search fa-3x img-search"></i>
                            <img class="img-responsive" src="<?=URL_IMAGES;?>gallery/<?=$row['eng_title'];?>/<?=$row['url'];?>" alt="<?=$row['title'];?>" />
                        </a>
                    </div>
                    <p>
                        <a href="<?=URL;?>gallery/details/<?=$row['id'];?>"><?=$row['title'];?></a>
                        <small><?=$row['date'];?></small>
                    </p>
                </div>
            </div>
            <?php endforeach; ?>
        </div>
        <a href="<?=URL;?>gallery/view/all/page-1"><div class="button clear">Больше</div></a>
    </div>
