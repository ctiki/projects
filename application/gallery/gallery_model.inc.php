<?php
class Gallery_Model extends Model
{
    private $_per_page = 3;

    public function getCategoriesListModel(){
        $fields = array('id', 'title', 'id_parent', 'eng_title');
        $categories_list = $this->GetRecordsInFields('services', $fields);
        return $categories_list;
    }

    public function getImagesByModel($category, $page = 1){
        $offset = ($page - 1) * $this->_per_page;
        $sth = Database::$DB->prepare("SELECT gallery.*, services.eng_title\n"
            . "FROM gallery JOIN services\n"
            . "ON gallery.id_category=services.id\n"
            . "WHERE services.eng_title=:val\n"
            . "LIMIT $this->_per_page OFFSET $offset");
        $sth->bindParam('val', $category);
        $sth->execute();
        $rows = array();
        while($row = $sth->fetch(PDO::FETCH_ASSOC))
            $rows []= $row;
        return $rows;
    }
    public function getTotalCountOfCategoryModel($category){
        $sth = Database::$DB->prepare("SELECT count(*)\n"
            . "FROM gallery\n"
            . "JOIN services\n"
            . "ON gallery.id_category=services.id\n"
            . "WHERE services.eng_title=:val");
        $sth->bindParam('val', $category);
        $sth->execute();
        $result = $sth->fetch();
        return $result[0];
    }
    public function getPaginationModel($category, $page){
        $total = $this->getTotalCountOfCategoryModel($category);
        $pagination = new Pagination($total, $page, $this->_per_page, 'page-');
        return $pagination;
    }
}