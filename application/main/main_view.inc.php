<?php
class Main_View extends View
{
    public function __construct()
    {
        parent::__construct();
    }
    public function getMainPage($lastWorks){
        $assocData = [
            'LastWorks' => $lastWorks
        ];
        $this->tpl->SetParams($assocData);
        return $this->tpl->Fetch('templates/main/main.tpl');
    }
    public function getGalleryPage(){
        return $this->tpl->Fetch('templates/main/main_gallery.tpl');
    }
    public function getTpl(){
        return $this->tpl;
    }
}