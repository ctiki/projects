<?php
/**
 * Created by PhpStorm.
 * User: Сергей
 * Date: 07.11.2015
 * Time: 14:29
 */

class Hash {

    public static function decrypt($data){
        $result = rtrim( mcrypt_decrypt( MCRYPT_RIJNDAEL_256, md5( HASH_KEY ), base64_decode( $data ), MCRYPT_MODE_CBC, md5( md5( HASH_KEY ) ) ), "\0");
        return $result;
    }
    public static function encrypt($data){
        $result = base64_encode( mcrypt_encrypt( MCRYPT_RIJNDAEL_256, md5( HASH_KEY ), $data, MCRYPT_MODE_CBC, md5( md5( HASH_KEY ) ) ) );
        return $result;
    }
}