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
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/master.css">
    <title>Welcome to details page</title>
</head>
<body>

    <?php include './template/header.php'; ?>     
    <?php if(!empty($movie)):?>
    <section class='movie-disp-details'>
        <div class='movie-item-details'>
            <h2><?php echo $movie['product_name']; ?></h2>
            <img src="images/<?php echo $movie['product_img']; ?>" alt="<?php echo $movie['product_name']; ?> Cover image" class="detailsImage">
        </div>
        <div class='details-info'>
            <h4>Price: </h4>
            <p>$<?php echo $movie['product_price']; ?></p>
            <h4>Colors Available: </h4>
            <p><?php echo $movie['product_color']; ?></p>
        </div>
    </section>
    <div class='details-desc'>
        <h4>Description: </h4>
        <p><?php echo $movie['product_description']; ?></p>
    </div>
    <?php else:?>
    <p>There isnt such a product</p>
    <?php endif;?>

    <?php include './template/footer.php'; ?>
</body>
</html>