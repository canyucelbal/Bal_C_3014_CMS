<?php
require_once '../load.php';

confirm_logged_in(true);

if(isset($_POST['submit'])) {
    $data = array(
        'product_img'=>trim($_POST['product_img']),
        'product_name'=>trim($_POST['product_name']),
        'product_price'=>trim($_POST['product_price']),
        'product_description'=>trim($_POST['product_description']),
        'product_color'=>trim($_POST['product_color'])
 );

    $message = createUser($data);
}

?>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create User</title>
</head>
<body>
<section class="createSection">
<h2>Create Entry</h2>
<?php echo !empty($message)?$message:''; ?>
<form action="admin_createuser.php" method="post">
<label>Product img</label>
<input type="text" name="product_img" value="" id="first_name">


<label for="username">Product name</label>
<input type="text" name="product_name" value="" id="username">


<label for="name">Product Price</label>
<input type="name" name="product_price" value="" id="price">


<label for="password">Product Description</label>
<input type="text" name="product_description" value="" id="password">


<label for="password">Product Color</label>
<input type="text" name="product_color" value="" id="password">

<button type="submit" name="submit" >Create</button>


</form>
</body>
</html>
