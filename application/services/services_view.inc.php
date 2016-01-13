<?php
class Services_View extends View
{
    public function __construct()
    {
        parent::__construct();
    }
    public function getMainPage($model){
        $this->tpl->SetParam('CategoriesList', $model);
        return $this->tpl->Fetch('templates/services/services.tpl');
    }
    public function getDetailsPage($model){
        $this->tpl->SetParam('Result', $model);
        return $this->tpl->Fetch('templates/services/services_details.tpl');
    }
}