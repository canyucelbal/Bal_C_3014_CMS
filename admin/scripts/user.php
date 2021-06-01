<?php


function getUserLevelMap(){
return array(
    '0'=>'Web Editor',
    '1'=>'Web Admin'
);
}

function getCurrentUserLevel(){
    $user_level_map = getUserLevelMap();

    if(isset($_SESSION['user_level']) && array_key_exists($_SESSION['user_level'], $user_level_map)){
return $user_level_map[$_SESSION['user_level']];
    }

    else{
        return 'not recognized';
    }

}


function createUser($user_data){

$pdo = Database::getInstance()->getConnection();

$create_user_query = 'INSERT INTO tbl_products(product_img, product_name, product_price, product_description, product_color)';
$create_user_query.= ' VALUES(:product_img, :product_name, :product_price, :product_description, :product_color)';
$create_user_set = $pdo->prepare($create_user_query);
$create_user_result = $create_user_set->execute(

    array(
':product_img'=>$user_data['product_img'],
':product_name'=>$user_data['product_name'],
':product_price'=>$user_data['product_price'],
':product_description'=>$user_data['product_description'],
':product_color'=>$user_data['product_color']
    )

    );

if($create_user_result){ 
  redirect_to('index.php');


}
else{
    return 'User not allowed';
}

}

function getSingleProduct($user_id){
    $pdo = Database::getInstance()->getConnection();
    $get_user_query = 'SELECT * FROM tbl_products WHERE product_id = :id';
   $get_user_set = $pdo->prepare($get_user_query);
   $result = $get_user_set->execute(
       array(
           ':id'=>$user_id
       )
       );

       if($result && $get_user_set->rowCount()){
           return $get_user_set;
       }else {
           return false;
       }
}


function getAllUsers(){
    $pdo = Database::getInstance()->getConnection();

    $get_user_query = 'SELECT * FROM tbl_products';
    $users = $pdo->query($get_user_query);
    
 
        if($users){
            return $users;
        }else {
            return false;
        }
}



function isCurrentUserAdminAbove(){
    return !empty($_SESSION['user_level']);
}

function userExists($username) {
    $pdo = Database::getInstance()->getConnection();
    $user_exists_query = 'SELECT COUNT(*) FROM tbl_user WHERE user_name = :username';
    $user_exists_set = $pdo->prepare($user_exists_query);
    $user_exists_result= $user_exists_set->execute(
        array(
            ':username'=>$username
        )
    );

    return !$user_exists_result || $user_exists_set->fetchColumn()>0;
}

function deleteProduct($user_id){
$pdo = Database::getInstance()->getConnection();
$delete_user_query = 'DELETE FROM tbl_products WHERE product_id = :id';
$delete_user_set = $pdo->prepare($delete_user_query);
$delete_user_result = $delete_user_set->execute(
    array(
        ':id'=>$user_id
    )
);

if($delete_user_result && $delete_user_set->rowCount()>0){
    redirect_to('admin_deleteuser.php');
}
else {
    return false;
}

}


function editProduct($user_data){
    
        $pdo = Database::getInstance()->getConnection();
    
        $update_user_query = 'UPDATE tbl_products SET product_img = :product_img, product_name = :product_name, product_description = :product_description, product_price = :product_price, product_color = :product_color, WHERE product_id = :id';
        $update_user_set = $pdo->prepare($update_user_query);
        $update_user_result = $update_user_set->execute(
            array(
                ':product_img'=> $user_data['product_img'],
                ':product_name'=> $user_data['product_name'],
                ':product_description'=> $user_data['product_description'],
                ':product_price'=> $user_data['product_price'],
                ':product_color'=> $user_data['product_color']
            )
        );

        if($update_user_result){
            redirect_to('index.php');
        }
        else{
            return 'User not allowed';
        }
        }
        