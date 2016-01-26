<?php
class Gallery_Model extends Model
{
    private $_per_page = 6;
    public function getCategoriesListModel()
    {
        $fields = array('id', 'title', 'id_parent', 'eng_title');
        $categories_list = $this->GetRecordsInFields('services', $fields);
        return $categories_list;
    }

    public function getImagesByCategoryModel($category, $page = 1)
    {
        $order = $_POST['sorting'] or 'datedec';
        switch($order){
            case 'dateinc': $_SESSION['order'] = ['sth' => "ORDER BY date\n", 'value' => $order]; break;
            case 'datedec': $_SESSION['order'] = ['sth' => "ORDER BY date DESC\n", 'value' => $order]; break;
            case 'nameinc': $_SESSION['order'] = ['sth' => "ORDER BY title\n", 'value' => $order]; break;
            case 'namedec': $_SESSION['order'] = ['sth' => "ORDER BY title DESC\n", 'value' => $order]; break;
        }
        $offset = ($page - 1) * $this->_per_page;
        if($category == 'all'){
            $sth = Database::$DB->prepare("SELECT gallery.*, services.eng_title\n"
                . " FROM gallery JOIN services\n"
                . " ON gallery.id_category=services.id\n"
                . $_SESSION['order']['sth']
                . "LIMIT $this->_per_page OFFSET $offset\n");
            $sth->execute();
            while ($row = $sth->fetch(PDO::FETCH_ASSOC))
                $rows[] = $row;
        }
        else{
            $sth = Database::$DB->prepare("SELECT gallery.*, services.eng_title\n"
                . "FROM gallery JOIN services\n"
                . "ON gallery.id_category=services.id\n"
                . "WHERE services.eng_title=:val\n"
                . $_SESSION['order']['sth']
                . "LIMIT $this->_per_page OFFSET $offset");
            $sth->bindParam('val', $category);
            $sth->execute();
            $rows = array();
            while ($row = $sth->fetch(PDO::FETCH_ASSOC))
                $rows[] = $row;
        }
        return $rows;
    }
    public function getTotalCountOfCategoryModel($category)
    {
        if ($category == 'all') {
            $sth = Database::$DB->prepare("SELECT count(*)\n"
                . "FROM gallery\n"
                . "JOIN services\n"
                . "ON gallery.id_category=services.id\n");
        }
        else {
            $sth = Database::$DB->prepare("SELECT count(*)\n"
                . "FROM gallery\n"
                . "JOIN services\n"
                . "ON gallery.id_category=services.id\n"
                . "WHERE services.eng_title=:val");
            $sth->bindParam('val', $category);
        }
        $sth->execute();
        $result = $sth->fetch();
        return $result[0];
    }
    public function getPaginationModel($category, $page)
    {
        $total = $this->getTotalCountOfCategoryModel($category);
        $pagination = new Pagination($total, $page, $this->_per_page, 'page-');
        return $pagination;
    }
    public function getRecordByIdModel($id)
    {
        $sth = Database::$DB->prepare("SELECT gallery.*, services.eng_title, services.title AS services_title\n"
                                        . " FROM gallery JOIN services\n"
                                        . " ON gallery.id_category=services.id\n"
                                        . " WHERE gallery.id = :val");
        $sth->bindParam('val', $id);
        $sth->execute();
        return $sth->fetch(PDO::FETCH_ASSOC);
    }
    public function getSortModel()
    {
        $sortArray = [
            ['title' => 'дата +', 'value' => 'dateinc'],
            ['title' => 'дата -', 'value' => 'datedec'],
            ['title' => 'название +', 'value' => 'nameinc'],
            ['title' => 'название -', 'value' => 'namedec']
        ];
        return $sortArray;
    }
}