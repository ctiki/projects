<?php
class Gallery_Controller extends Controller
{
    private $_resArr = array();

    public function defaultAction(){
        $categories = $this->model->getCategoriesListModel();
        $this->_resArr['Content'] = $this->view->getMainPage($categories);
        $this->_resArr['Title'] = 'Галерея';
        return $this->_resArr;
    }
    public function viewAction($category, $page){
        $page =  preg_replace("/[^0-9]/", '', $page);
        $page = ($page > 0) ? $page : 1;
        $pagination = $this->model->getPaginationModel($category, $page);
        $gallery = $this->model->getImagesByModel($category, $page);
        if(empty($gallery))
            $errors  = 'Данные отсутствуют';
        $this->_resArr['Content'] = $this->view->getViewPage($gallery, $pagination, $errors);
        $this->_resArr['Title'] = 'Галерея/Просмотр';

        return $this->_resArr;
    }
}