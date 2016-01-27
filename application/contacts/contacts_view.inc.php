<?php
class Contacts_View extends View
{
    public function __construct()
    {
        parent::__construct();
    }
    public function getMainPage($result){
        $assocArray = [
            'Result' => $result
        ];
        $this->tpl->SetParams($assocArray);
        return $this->tpl->Fetch('templates/contacts/contacts.tpl');
    }
}