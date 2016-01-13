<?php
    class Menu{
        static function getMenuModel(){
            $sth = Database::$DB->prepare("SELECT `id`,`title`, `url` FROM `main_menu` ORDER BY id ASC");
            $sth->execute();
            $rows = array();
            while($row = $sth->fetch(PDO::FETCH_ASSOC))
                $rows []= $row;
            return $rows;
        }
        static function getMenuView(){
            $tpl = new Template();
            $items = self::getMenuModel();
            $tpl->SetParam('Items', $items);
            return $tpl->Fetch('templates/menu/menu.tpl');
        }
    }