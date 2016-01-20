<?php
class Main_Model extends Model{

    final public function getLastWorksModel(){
        $sth = Database::$DB->prepare("SELECT gallery.*, services.eng_title\n"
                                    ." FROM `gallery`\n"
                                    ." RIGHT JOIN services\n"
                                    ." ON gallery.id_category=services.id\n"
                                    ." ORDER BY `date` DESC\n"
                                    ." LIMIT 0,6");
        $sth->execute();
        if ($sth){
            while($row = $sth->fetch(PDO::FETCH_ASSOC)){
                $result[] = $row;
            }
        }
        else{
            $result = array();
        }
        return $result;
    }
}