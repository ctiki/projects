<?php
class Upload {

    protected static $mime_types = array("image/png", "image/jpeg", "image/gif", "image/jpg");

    public static function uploadFile($file, $dir) {
        if(!self::isSecurity($file))
            return false;
        if(!is_dir($dir)){
            mkdir($dir, 0777);
        }
        $uploadfile = $dir."/".$file["name"];
        return move_uploaded_file($file["tmp_name"], $uploadfile);
    }
    protected static function isSecurity($file){
        $blacklist = array(".php", ".html", ".php3", ".php4", ".phtml", ".htm");
        foreach ($blacklist as $item) {
            if(preg_match("/$item\$/i", $file["name"])) return false;
        }
        $type = $file["type"];
            for ($i=0; $i < count(self::$mime_types); $i++) {
                if($type == self::$mime_types[$i]) break;
                if($i+1 == count(self::$mime_types)) return false;
        }
        return true;
    }
}