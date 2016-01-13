<?php
class Main_Controller extends Controller
{
    private $_resArr = array();
    public function defaultAction(){
        $model = $this->model->getContent();
        $this->_resArr['Content'] = $this->view->getMainPage($model);
        $this->_resArr['Title'] = 'Главная';
        return $this->_resArr;
    }
    public function galleryAction(){
        $this->_resArr['Content'] = $this->view->getGalleryPage();
        $this->_resArr['Title'] = 'Галерея';
        return $this->_resArr;
    }
}