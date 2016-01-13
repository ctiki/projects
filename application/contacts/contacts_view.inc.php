<?php
class Contacts_View extends View
{
    public function __construct()
    {
        parent::__construct();
    }
    public function getMainPage(){
        return $this->tpl->Fetch('templates/contacts/contacts.tpl');
    }
}