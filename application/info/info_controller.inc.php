<?php
class Info_Controller extends Controller
{
    private $_resArr = array();

    public function defaultAction(){
        $this->_resArr['Content'] = $this->view->getMainPage();
        $this->_resArr['Title'] = 'О нас';
        return $this->_resArr;
    }
}