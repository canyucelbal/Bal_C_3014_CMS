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
    <link href='https://fonts.googleapis.com/css?family=Quicksand' rel='stylesheet'>
    <link rel="stylesheet" href="css/master.css">
    <title>Sportchek CRUD CMS - Details</title>
</head>
<body>
    <?php include './template/header_details.php'; ?>  
    <div class='col-6 col-s-11 container'>
        <?php if(!empty($movie)):?>
        <section class='col-12 col-s-12 movie-disp-details'>
            <div class='col-6 col-s-12 movie-item-details'>
                <h2><?php echo $movie['product_name']; ?></h2>
                <img class='col-12 col-s-12' src="images/<?php echo $movie['product_img']; ?>" alt="<?php echo $movie['product_name']; ?> Cover image" class="detailsImage">
            </div>
            <div class='col-3 col-s-12 details-info'>
                <h4>Price: </h4>
                <p>$<?php echo $movie['product_price']; ?></p>
                <h4>Colors Available: </h4>
                <p><?php echo $movie['product_color']; ?></p>
                <button class='col-12 col-s-12' type="button">Add to Cart!</button>
            </div>
        </section>
        <div class='col-12 col-s-12 details-desc'>
            <h4>Description: </h4>
            <p><?php echo $movie['product_description']; ?></p>
        </div>
        <?php else:?>
        <p>There isn't such a product</p>
        <?php endif;?>
    </div>
    <?php include './template/footer.php'; ?>
</body>
</html>