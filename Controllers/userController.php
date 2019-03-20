<?php  
include_once "db.php";
$db = db::get();

function updateMyUser($userName,$email,$oldPass,$newpass,$renewpass){
 	session_start();
 	$db=db::get();

 	$loggedUser=$db->getRow("SELECT * FROM users WHERE id=".$_SESSION['id']);
 	if ($userName!="" && strlen($userName)>3) {
 		$userName=$db->escape($userName);
 		if ($loggedUser['uname']=!$userName) {
 			if ($db->numrows("SELECT * FROM users WHERE uname='$userName'")==0) {
 				$db->query("UPDATE users SET uname='$userName' WHERE id=".$_SESSION['id']);
 				$msg.="Succesful username update<br>";
 			}else{
 				$msg.="This username is in use<br>";
 			}
 		}else{
 			$msg.="error same user name as before<br>";
 		}
 	}else{
 		$msg.="error username<br>";
 	}

 	if ($email!="" && filter_var($email, FILTER_VALIDATE_EMAIL))) {
		$email=$db->escape($email);
 		if ($loggedUser['email']=!$email) {
 			if ($db->numrows("SELECT * FROM users WHERE email='$email'")==0) {
 				$db->query("UPDATE users SET email='$email' WHERE id=".$_SESSION['id']);
 				$msg.="Succesful email update<br>";
 			}else{
 				$msg.="This email is in use<br>";
 			}
 		}else{
 			$msg.="same user email as before<br>";
 		}
 	}else{
 		$msg.="Not valid email<br>";
 	}
 	if (md5($oldPass)==$loggedUser['password']) {
 		if ($newpass==$renewpass) {
 			if (strlen($newpass)>7) {
 				$newpass = md5($newpass);
 				$db->query("UPDATE users SET password='$newpass' WHERE id=".$_SESSION['id']);
 				$msg.="Succesful password update<br>";
 			}else{
 				$msg.="Password is too short<br>";
 			}
 			
 		}else{
 			$msg.="Wrong old password<br>";
 		}
 		
  	}else{
  		$msg.="Wrong old password<br>";
  	}
  	return $msg;
}
//***********************login
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
