<?php
class Admin_View extends View
{
    public function __construct()
    {
        parent::__construct();
    }
    public function getMainPage(){
        return $this->tpl->Fetch('templates/admin/admin.tpl');
    }
    public function getEnterPage(){
        return $this->tpl->Fetch('templates/admin/admin_enter.tpl');
    }
    public function getCreatePage($table, $categories){
        $assocArray = array(
            'TableName' => $table,
            'Categories' => $categories
        );
        $this->tpl->SetParams($assocArray);
        return $this->tpl->Fetch('templates/admin/admin_create.tpl');
    }
    public function getReadPage($result, $table, $fields, $pagination, $errors){
        $assocArray = array(
            'List' => $result,
            'Fields' => $fields,
            'TableName' => $table,
            'Pagination' => $pagination,
            'Errors' => $errors
        );
        $this->tpl->SetParams($assocArray);
        return $this->tpl->Fetch('templates/admin/admin_read.tpl');
    }
    public function getUpdatePage($result, $table, $fields, $categories, $errors){
        $assocArray = array(
            'UpdateRecord' => $result,
            'TableName' => $table,
            'Fields' => $fields,
            'Categories' => $categories,
            'Errors' => $errors
        );
        $this->tpl->SetParams($assocArray);
        return $this->tpl->Fetch('templates/admin/admin_update.tpl');
    }
}