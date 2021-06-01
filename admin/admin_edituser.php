<?php
require_once '../load.php';
confirm_logged_in();

$id = $_GET["product_id"];
$current_user = getSingleProduct($id);

if(empty($current_user)){
    $message = 'Failed to get user info';

}

if(isset($_POST['submit'])){
$data = array (
    'product_img'=>trim($_POST['product_img']),
    'product_name'=>trim($_POST['product_name']),
    'product_description'=>trim($_POST['product_description']),
    'product_price'=>trim($_POST['product_price']),
    'product_color'=>trim($_POST['product_color'])
);

$message = editProduct($data);
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit user</title>
</head>
<body>
    <h2>Edit user</h2>

    <?php echo !empty($message) ? $message:'';?>
    <?php if(!empty($current_user)): ?>
    <form action="admin_edituser.php" method="post">
<?php while($user_info = $current_user->fetch(PDO::FETCH_ASSOC)):?>

 <label for="first_name">Cover</label>
 <input type="text" name="product_img" value="<?php echo $user_info['product_img']; ?>"  id="first_name">

 
 <label for="username">Name</label>
 <input type="text" name="product_name" value="<?php echo $user_info['product_name']; ?>" id="username">

 
 <label for="password">Description</label>
 <input type="text" name="product_description" value="<?php echo $user_info['product_description']; ?>" id="password">

 
 <label for="username">Color</label>
 <input type="text" name="product_color" value="<?php echo $user_info['product_color']; ?>" id="email">


 <label for="username">Price</label>
 <input type="text" name="product_price" value="<?php echo $user_info['product_price']; ?>" id="username">

 
 <button type="submit" name="submit">Update user</button>

 <?php endwhile;?>
 </form>

 <?php endif;?>
</body>
</html>