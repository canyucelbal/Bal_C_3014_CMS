<?php 
function redirect_to($location = null)
{
    if (null != $location) {
        header('Location: ' . $location);
        exit;
    }
}

function CheckFirstUser($user_time){ 
    $pdo = Database::getInstance()->getConnection();
 if(empty($user_time)){
    redirect_to('index.php');
 }
    else{
        redirect_to('index.php');
    }
}


function passwordGenerator(){
    $all_possible_alphabet = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890'; 
    $password = array();
    $alphabetsLen = strlen($all_possible_alphabet);
    for ($i = 0; $i < 5; $i++) { 
        $pass_var = rand(0, $alphabetsLen); 
        $password[] = $all_possible_alphabet[$pass_var];
    }
    return implode($password);
}

function verifyPassword($password_entered, $password_stored)
{
    if (password_verify($password_entered, $password_stored)) {
        return true;
    } else {
        return false;
    }
}
