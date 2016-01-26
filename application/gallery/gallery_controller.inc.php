<?php
class Gallery_Controller extends Controller
{
    private $_resArr = array();

    public function defaultAction()
    {
//        $categories = $this->model->getCategoriesListModel();
//        $this->_resArr['Content'] = $this->view->getMainPage($categories);
//        $this->_resArr['Title'] = 'Галерея';
//        return $this->_resArr;
        $this->_resArr = $this->viewAction('all', 'page-1');
        return $this->_resArr;
    }
    public function viewAction($category, $page)
    {
        $page =  preg_replace("/[^0-9]/", '', $page);
        $page = ($page > 0) ? $page : 1;
        $order = $this->model->getSortModel();
        $categories = $this->model->getCategoriesListModel();
        $pagination = $this->model->getPaginationModel($category, $page);
        $gallery = $this->model->getImagesByCategoryModel($category, $page);
        if(!sizeof($gallery))
            $errors  = 'Данные отсутствуют';
        $this->_resArr['Content'] = $this->view->getViewPage($categories, $category, $gallery, $pagination, $order, $errors);
        $this->_resArr['Title'] = 'Галерея/Просмотр';
        return $this->_resArr;
    }
    public function detailsAction($id)
    {
        $record = $this->model->getRecordByIdModel($id);
        if(!sizeof($record))
            $errors = 'Данные отсутсвуют';
        $this->_resArr['Content'] = $this->view->getDetailsPage($record, $errors);
        $this->_resArr['Title'] = 'Галерея/Описание';
        return $this->_resArr;
    }
}