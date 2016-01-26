<div class="row contacts-wrapper">
    <div class="col-xs-12 col-sm-3">
        <ul>
            <li>Телефоны: <?=$Contacts[0]['description']?></li>
            <li>Почта: <?=$Contacts[1]['description']?></li>
            <li>Instagram: <?=$Contacts[2]['description']?></li>
            <li>ВКонтакте: <?=$Contacts[3]['description']?></li>
        </ul>
    </div>
    <div class="col-xs-12 col-sm-9 form-wrapper">
        <form action="" method="post">
            <div class="input-info">
                <input type="text" class="form-control input-md" placeholder="имя:">
                <input type="text" class="form-control input-md bfh-phone" data-format="+380 (dd) ddd-dd-dd" placeholder="номер телефона:">
                <input type="text" class="form-control input-md" placeholder="e-mail:">
            </div>
            <div class="message">
                <textarea name="" id="" cols="30" rows="10" placeholder="сообщение..."></textarea>
            </div>
        </form>
    </div>
</div>