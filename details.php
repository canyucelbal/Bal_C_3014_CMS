<?php

require_once './config/database.php';

require_once './admin/scripts/read.php';

if(isset($_GET['id'])){
    $id = $_GET['id'];
    $movie = getSpecificProduct($id);

}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/main.css">
    <title>Welcome to details page</title>
</head>
<body>

    <?php include './template/header.php'; ?>     
    <?php if(!empty($movie)):?>
    <div class='movie-item'>
        <img src="images/<?php echo $movie['product_img']; ?>" alt="<?php echo $movie['product_name']; ?> Cover image" class="detailsImage">

        <h2><?php echo $movie['product_name']; ?></h2>
        <h4>Price: $<?php echo $movie['product_price']; ?></h4>
        <h4>Colors Available: <?php echo $movie['product_color']; ?></h4>
        <p>Description: <?php echo $movie['product_description']; ?></h4>
    </div>
    <?php else:?>
    <p>There isnt such a product</p>
    <?php endif;?>

    <?php include './template/footer.php'; ?>
</body>
</html>