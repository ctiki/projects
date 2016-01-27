<?php
class Contacts_Model extends Model
{
    public function getContactsModel()
    {
        return $this->GetAllRecords('contacts');
    }
    public function sendMessageModel()
    {
        $userName = $_POST['user-name'];
        $userPhone = $_POST['user-phone'];
        $userEmail = $_POST['user-email'];
        $userMessage = $_POST['user-message'];
        $subject = "Интерес";
        $headers = "From: \"$userName\" <$userEmail>\r\n";
        $headers .= "Content-type: text/plain; charset=UTF-8\r\n";
        $contactMessage = "
            Имя отправителя: $userName <$userEmail>\n"
            ."Текст: $userMessage\n"
            ."IP отправителя: $_SERVER[REMOTE_ADDR]";

        if(!empty($userName) && !empty($userPhone) && !empty($userMessage)){
            $result = mail(ADMIN_MAIL, $subject, $contactMessage, $headers);
            if($result){
                $result = 'Спасибо за ваше сообщение.';
            } else{
                $result = 'Извените произошла ошибка. Поробуйте позже.';
            }
        }
        else
            $result = 'Введите все поля корректно.';
        unset($_POST);
        return $result;
    }
}