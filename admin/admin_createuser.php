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
    <link rel="stylesheet" href="../css/reset.css">
    <link href='https://fonts.googleapis.com/css?family=Quicksand' rel='stylesheet'>
    <link rel="stylesheet" href="../css/master.css">
    <title>Create User</title>
</head>
<body>
<header>
    <section class="headNavigation">
        <section class="logoPart">
        <a href="index.php"> <img src="../images/sportchek-logo.png" alt=""></a>
        </section>
    </section>
    </header>
<section class="col-6 createSection">
<h2>Create Entry</h2>
<?php echo !empty($message)?$message:''; ?>
<form class="col-12" action="admin_createuser.php" method="post">
<label class="col-12">Product img</label>
<input class="col-12" type="text" name="product_img" value="" id="first_name">


<label class="col-12" for="username">Product name</label>
<input class="col-12" type="text" name="product_name" value="" id="username">


<label class="col-12" for="name">Product Price</label>
<input class="col-12" type="name" name="product_price" value="" id="price">


<label class="col-12" for="password">Product Description</label>
<input class="col-12" type="text" name="product_description" value="" id="password">


<label class="col-12" for="password">Product Color</label>
<input class="col-12" type="text" name="product_color" value="" id="password">

<button class="col-12" type="submit" name="submit" >Create</button>


</form>
</body>
</html>
