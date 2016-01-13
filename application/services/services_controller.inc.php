<?php
class Services_Controller extends Controller
{
    private $_resArr = array();

    public function defaultAction(){

        $model = $this->model->getCategoriesListModel();

        $this->_resArr['Content'] = $this->view->getMainPage($model);

        $this->_resArr['Title'] = 'Услуги';
        return $this->_resArr;
    }
    public function detailsAction($id){
        $model = $this->model->getDetailsModel($id);

        $this->_resArr['Content'] = $this->view->getDetailsPage($model);

        $this->_resArr['Title'] = 'Информация';

        return $this->_resArr;
    }
}