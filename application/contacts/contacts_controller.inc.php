<?php
class Contacts_Controller extends Controller
{
    private $_resArr = array();

    public function defaultAction()
    {

        $this->view->tpl->SetParam('Contacts', $this->model->getContactsModel());

        $this->_resArr['Content'] = $this->view->getMainPage($result = null);

        $this->_resArr['Title'] = 'Контакты';
        return $this->_resArr;
    }
    public function sendAction()
    {
        $this->view->tpl->SetParam('Contacts', $this->model->getContactsModel());
        $result = $this->model->sendMessageModel();
        $this->_resArr['Content'] = $this->view->getMainPage($result);
        $this->_resArr['Title'] = 'Контакты';
        return $this->_resArr;
    }
}