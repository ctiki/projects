<?php
class Contacts_Controller extends Controller
{
    private $_resArr = array();

    public function defaultAction(){

        $this->view->tpl->SetParam('Contacts', $this->model->getContactsModel());

        $this->_resArr['Content'] = $this->view->getMainPage();

        $this->_resArr['Title'] = 'Контакты';
        return $this->_resArr;
    }
}