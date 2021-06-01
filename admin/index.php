<?php
require_once '../load.php'; 
confirm_logged_in();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/reset.css">
    <link href='https://fonts.googleapis.com/css?family=Quicksand' rel='stylesheet'>
    <link rel="stylesheet" href="../css/master.css">
    <title>Dashboard page</title>
</head>
<body>
    <header>
    <section class="headNavigation">
        <section class="logoPart">
        <a href="index.php"> <img src="../images/sportchek-logo.png" alt=""></a>
        </section>
    </section>
    </header>
    <section class='container'>
        <h2>Welcome to Dashboard Page, <?php echo $_SESSION['user_name']; ?> </h2>
        <section class='options'>
            <?php if(isCurrentUserAdminAbove()): ?>
                <a href="admin_createuser.php">Create Product</a>
                <a href="admin_deleteuser.php">Delete Product</a>
                <a href="admin_editother.php">Edit Product</a>
            <?php endif;?>
                <a href="admin_logout.php">Sign Out</a>
        </section>
    </section>
</body>
</html>