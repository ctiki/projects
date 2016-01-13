<?php
class Services_Model extends Model
{
    public function getCategoriesListModel(){
        $fields = array('id','title', 'id_parent');
        return $this->GetRecordsInFields('services', $fields);
    }

    public function getDetailsModel($id){
        $id = intval($id);
        return $this->GetRecordByFieldName('services', 'id', $id);
    }
}