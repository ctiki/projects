<?php
class Main_Controller extends Controller
{
    private $_resArr = array();
    public function defaultAction(){
        $lastWorks = $this->model->getLastWorksModel();
        $this->_resArr['Content'] = $this->view->getMainPage($lastWorks);
        $this->_resArr['Title'] = 'Главная';
        return $this->_resArr;
    }
}