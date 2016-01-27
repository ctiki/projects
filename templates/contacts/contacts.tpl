<div class="row contacts-wrapper">
    <?php if(!empty($Result)): ?>
        <h1><?=$Result;?></h1>
    <?php endif;?>
    <div class="col-xs-12 col-sm-4">
        <h1 class="main-title" style="text-align: left">
            Контакты
        </h1>
        <?php foreach($Contacts as $row): ?>
            <b><?=$row['title'];?></b>: <?=$row['description'];?><br>
        <?php endforeach;?>
    </div>
    <div class="col-xs-12 col-sm-8 form-wrapper">
        <h1 class="main-title" style="text-align: left">
            Обратная связь
        </h1>
        <form action="<?=URL;?>contacts/send" method="post">
            <div class="input-info">
                <input type="text" class="form-control input-md" placeholder="имя: *" name="user-name">
                <input type="text" class="form-control input-md bfh-phone" data-format="+380 (dd) ddd-dd-dd" placeholder="номер телефона: *" name="user-phone">
                <input type="email" class="form-control input-md" placeholder="e-mail:" name="user-email">
            </div>
            <div class="message">
                <textarea name="user-message" cols="30" rows="10" placeholder="сообщение... *"></textarea>
            </div>
            <button type="submit" class="form-control btn btn-default" name="submit">Отправить</button>
        </form>
    </div>
</div>