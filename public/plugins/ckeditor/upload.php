<?php
    if($_FILES['upload'])
    {
        if (($_FILES['upload'] == "none") OR (empty($_FILES['upload']['name'])) )
        {
            $message = "Вы не выбрали файл";
        }
        else if ($_FILES['upload']["size"] == 0 OR $_FILES['upload']["size"] > 3050000)
        {
            $message = "Размер файла не соответствует нормам";
        }
        else if (($_FILES['upload']["type"] != "image/jpeg") AND ($_FILES['upload']["type"] != "image/jpg") AND ($_FILES['upload']["type"] != "image/png"))
        {
            $message = "Допускается загрузка только картинок JPG и PNG.";
        }
        else if (!is_uploaded_file($_FILES['upload']["tmp_name"]))
        {
            $message = "Что-то пошло не так. Попытайтесь загрузить файл ещё раз.";
        }
        else{
            $name = $_FILES['upload']['name'];
            move_uploaded_file($_FILES['upload']['tmp_name'], "../../images/services/".$name);
            $full_path = 'http://'.$_SERVER['SERVER_NAME'].'/rsstyling/public/images/services/'.$name;
            $message = "Файл ".$_FILES['upload']['name']." загружен";
            $size=@getimagesize('../../images/services/'.$name);
            if($size[0]<50 OR $size[1]<50){
                unlink('http://'.$_SERVER['SERVER_NAME'].'/rsstyling/public/images/services/'.$name);
                $message = "Файл не является допустимым изображением";
                $full_path="";
            }
        }
        $callback = $_REQUEST['CKEditorFuncNum'];
        echo '<script type="text/javascript">window.parent.CKEDITOR.tools.callFunction("'.$callback.'", "'.$full_path.'", "'.$message.'" );</script>';
    }