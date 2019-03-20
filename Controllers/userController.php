<?php  
include_once "db.php";
$db = db::get();

private function Login($username, $password){
    if(!empty($username) && !empty($password)){
        if($password == $passwordAgain){
            $queryString = "SELECT username FROM users WHERE username = '"$username"'";
            $isUserExists = $db->getRow($queryString);
            if($isUserExists != 0){
              $selectString = "SELECT * FROM users WHERE username = '".$username."' AND password = '".$password."'";
              $isPasswordOkay = $db->getRow($selectString);
              if($isPasswordOkay == 1){
                  $_SESSION["id"] == $isPasswordOkay["id"];
                   $errorMsg = "Succesful Login";
              }else{
                  $errorMsg = "Password does not match!";
              }
            }
        }else{
            $errorMsg = "User does not exists!";
        }
    }else{
        $errorMsg = "No fields can be empty!";
    }
    return $errorMsg;
}