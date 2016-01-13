<?php
class Contacts_Model extends Model
{
    public function getContactsModel(){
        return $this->GetAllRecords('contacts');
    }
}