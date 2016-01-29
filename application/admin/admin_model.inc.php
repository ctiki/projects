<?php
class Admin_Model extends Model
{
    public function validateModel(){ # Authentication model. Function check login and password and return true if all right, or false if login or password are incorrect
        $getLogin = Hash::encrypt(parsedField($_POST['login']));
        $getPassword = Hash::encrypt(parsedField($_POST['password']));
        $user = $this->GetRecordByFieldName('users', 'status', 'admin');
        if($user['login'] == $getLogin && $user['password'] == $getPassword){
            Session::set('loggedIn', true);
            Session::set('status', $user['status']);
            return true;
        }
        else {
            return false;
        }
    }
    /**
     * Pagination
    **/
    public function getTotalCountOfTableModel(){
        $admin_category = $_POST['admin-category'];
        if(!empty($admin_category))
            $_SESSION['admin-category'] = $admin_category;
        $sth = Database::$DB->prepare("SELECT count(*)\n"
            . "FROM `gallery`\n"
            . " WHERE `gallery`.`id_category` = {$_SESSION['admin-category']}");
        $sth->execute();
        $result = $sth->fetch();
        return $result[0];
    }
    public function getPaginationModel($table, $page){
        $total = $this->getTotalCountOfTableModel();

        $pagination = new Pagination($total, $page, 4, 'page-');
        return $pagination;
    }

    public function getReadModel($table, $page){
        $admin_category = $_POST['admin-category'];
        if(!empty($admin_category))
            $_SESSION['admin-category'] = $admin_category;
        $offset = ($page - 1) * 4;
        if ($table == 'gallery'){
            $sth = Database::$DB->prepare("SELECT\n"
                . " `gallery`.*, `services`.`eng_title`,\n"
                . " `services`.`title` as `category_name`\n"
                . " FROM\n"
                . " gallery\n"
                . " LEFT JOIN services on `gallery`.`id_category` = `services`.`id`\n"
                . " WHERE `gallery`.`id_category` = {$_SESSION['admin-category']}"
                . " LIMIT 4 OFFSET $offset");
            $result = $sth->execute();
            if($result){
                while($row = $sth->fetch(PDO::FETCH_ASSOC)) {
                    $rows[] = $row;
                }
                return $rows;
            }
            else
                return 'Неправильные данные';
        }
        else {
            $table = parsedField($table);
            $result = $this->GetAllRecords($table) ? $this->GetAllRecords($table) : 'Неправильные данные';
            return $result;
        }
    }
    public function getFieldsModel($table){
        $table = parsedField($table);
        $sth = Database::$DB->prepare("SELECT COLUMN_COMMENT\n"
                                        ."FROM INFORMATION_SCHEMA.COLUMNS\n"
                                        ."WHERE table_name = :table");
        $sth->bindValue(':table', $table, PDO::PARAM_STR);
        $result = $sth->execute();
        if($result){
            while($row = $sth->fetch(PDO::FETCH_ASSOC)) {
                $rows[] = $row;
            }
            return $rows;
        }
        else
            return 'Неправильные данные';
    }
    public function getCreateModel($table){
        $table = parsedField($table);
        $result = $this->GetAllRecords($table);
        if($result){
            return $result;
        }
        else
            return 'Неправильные данные';
    }
    public function getCategoriesModel(){
        $sth = Database::$DB->prepare("SELECT `id`, `title`, `id_parent`, `eng_title`\n"
                                        ."FROM `services`");
        $result = $sth->execute();
        if($result){
            while($row = $sth->fetch(PDO::FETCH_ASSOC)) {
                $rows[] = $row;
            }
            return $rows;
        }
        else
            return 'Неправильные данные';
    }
    public function setNewRecordModel($table){
        $assocArray = $_POST;
        $this->Insert($assocArray, $table);
        unset($_POST);
    }
    public function uploadImageModel(){
        $id = $_POST['id_category'];
        $sth = Database::$DB->prepare("SELECT `eng_title`\n"
            ."FROM `services`\n"
            ."WHERE `id` = :id");
        $sth->bindValue(':id', $id, PDO::PARAM_STR);
        $sth->execute();
        $result = $sth->fetch();

        # We need take eng title for creating a folder
        $dir = GALLERY.$result[0];
        $image = $_FILES['gallery_image'];
        $imagename = $_FILES['gallery_image']['name'];
        $assocArray = $_POST;
        $assocArray['date'] = date("Y-m-d H:i:s");
        $assocArray['url'] = $imagename;
        if(!array_search('', $assocArray)) {
            $this->Insert($assocArray, 'gallery');
            $result = Upload::uploadFile($image, $dir);
        }
        else
            $result = false;
        unset($_POST);
        return $result;
    }
    public function getUpdateRecordModel($table, $id){
        if ($table == 'gallery'){
            $sth = Database::$DB->prepare("SELECT `gallery`.*, `services`.`eng_title`\n"
                                        ." FROM `gallery`\n"
                                        ." JOIN `services`\n"
                                        ." ON `gallery`.`id_category` = `services`.`id`\n"
                                        ." WHERE `gallery`.`id` = :id");
            $sth->bindValue(':id', $id, PDO::PARAM_STR);
            $sth->execute();
            $result = $sth->fetch(PDO::FETCH_ASSOC);
        }
        else{
            $result = $this->GetRecordByFieldName($table, 'id', $id);
        }
        return  $result;
    }
    public function setUpdateRecordModel($table, $id){
        if($table == 'gallery') {
            $id_category = $_POST['id_category'];
            $sth = Database::$DB->prepare("SELECT `eng_title`\n"
                ."FROM `services`\n"
                ."WHERE `id` = :id");
            $sth->bindValue(':id', $id_category, PDO::PARAM_STR);
            $sth->execute();
            $result = $sth->fetch();

            # We need take eng title for creating a folder
            $dir = GALLERY.$result[0];
            $image = $_FILES['gallery_image'];
            $imagename = $_FILES['gallery_image']['name'];
            $assocArray = $_POST;
            if(!empty($imagename))
                $assocArray['url'] = $imagename;
            $result = $this->Update($assocArray, $table, 'id', $id);
            Upload::uploadFile($image, $dir);
        }
        else {
            $assocArray = $_POST;
            $result = $this->Update($assocArray, $table, 'id', $id);
        }
        unset($_POST);
        return $result;
    }
    public function deleteRecordModel($table, $id){
        $this->Delete($table, 'id', $id);
    }
    public function clearDirectoryModel($dir){
        $path = URL_IMAGES.'gallery/'.$dir;
        $dirlist = scandir($path, 1);
        return $dirlist;
    }
}