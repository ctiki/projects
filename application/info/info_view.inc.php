<?php
class Info_View extends View
{
    public function __construct()
    {
        parent::__construct();
    }
    public static function getMainPage()
    {
        $tpl = new Template();
        return $tpl->Fetch('templates/info/info.tpl');
    }
}