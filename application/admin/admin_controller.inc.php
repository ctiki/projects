<?php
class Admin_Controller extends Controller
{
    private $_resArr = array();
    private $_loggedIn = null;

    function __construct(){
        $this->_loggedIn = Session::get('loggedIn');
    }
    public function defaultAction(){
        if($_POST['enter']){
            $this->_loggedIn = $this->model->validateModel();
        }
        if($this->_loggedIn){
            $this->_resArr['Content'] = $this->view->getMainPage();
        }
        else {
            $this->view->tpl->SetParam('Errors', 'Не правильно введены данные');
            $this->_resArr['Content'] = $this->view->getEnterPage();
        }
        $this->_resArr['Title'] = 'Админ';

        return $this->_resArr;
    }
    public function logoutAction(){
        Session::destroy();
        header('location:'.URL.'admin');
    }
    /**
     * CRUD Operation Release(Create Read Update Delete)
     * It Shows Records For Needed Operation
    **/
    public function createAction($table){
        if($this->_loggedIn) {
            $this->model->getCreateModel($table);
            $categories = $this->model->getCategoriesModel();
            $this->_resArr['Content'] = $this->view->getCreatePage($table, $categories);
            $this->_resArr['Title'] = 'Админ/Создание';
            return $this->_resArr;
        }
    }
    public function readAction($table, $page = 1){
        if($this->_loggedIn) {
            $page =  preg_replace("/[^0-9]/", '', $page);
            $page = ($page > 0) ? $page : 1;
            $pagination = $this->model->getPaginationModel($table, $page);
            $result = $this->model->getReadModel($table, $page);
            $fields = $this->model->getFieldsModel($table);

            $errors = is_array($result) ? null : $result;

            $this->_resArr['Content'] = $this->view->getReadPage($result, $table, $fields, $pagination, $errors);
            $this->_resArr['Title'] = 'Админ/Просмотр';
            return $this->_resArr;
        }
    }
    public function updateAction($table, $id){
        if($this->_loggedIn) {
            $result = $this->model->getUpdateRecordModel($table, $id);
            $fields = $this->model->getFieldsModel($table);
            $categories = $this->model->getCategoriesModel();
            $errors = is_array($result) ? null : $result;

            $this->_resArr['Content'] = $this->view->getUpdatePage($result, $table, $fields, $categories, $errors);
            $this->_resArr['Title'] = 'Админ/Редактирование';
            return $this->_resArr;
        }
    }
    public function deleteAction($table, $id){
        if($this->_loggedIn) {
            $this->model->deleteRecordModel($table, $id);
            $self = $_SERVER['HTTP_REFERER'];
            header('location:' . $self);
            die;
        }
    }
    /**
     * Send Actions
    **/
    public function confirmCreateAction($table){ # Method That Sends Created Record Into DB
        if($this->_loggedIn) {
            $result = $this->model->setNewRecordModel($table);
            if ($result){
                $self = $_SERVER['HTTP_REFERER'];
                header('location:' . $self);
                die;
            }
            else
                echo "Error";
        }
    }
    public function uploadAction(){ # Upload Images Method On Input Item
        if($this->_loggedIn) {
            $this->model->uploadImageModel();
            $self = $_SERVER['HTTP_REFERER'];
            header('location:' . $self);
            die;
        }
    }
    public function confirmUpdateAction($table, $id){ # Method That Sends Updated Record Into DB
        if($this->_loggedIn) {
            $this->model->setUpdateRecordModel($table, $id);
            $self = $_SERVER['HTTP_REFERER'];
            header('location:' . $self);
            die;
        }
    }
    public function clearDirAction($dir){
        $dirlist = $this->model->clearDirectoryModel($dir);
        print_r($dirlist);
    }
}