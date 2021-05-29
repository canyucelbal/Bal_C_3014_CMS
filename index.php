<?php
require_once './config/database.php';
require_once './admin/scripts/read.php';


if(isset($_GET['filter'])) {
    $filter = $_GET['filter'];
    $getMovies = getProductsByGender($filter);
}

else{
    $getMovies = getAllProducts();
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
        <title>Welcome to cms</title>
    </head>
    <body>
        <?php include 'template/header.php'; ?> 
        <div class='col-6 container'>
            <section class="col-12 movie-disp">
                <?php foreach ($getMovies as $movie):?>
                <div class='col-3 col-s-6 movie-item'>
                <a class='col-11 col-s-11' href="details.php?id=<?php echo $movie['product_id']; ?>">
                    <img class='col-12' src="images/<?php echo $movie['product_img']; ?>" alt="<?php echo $movie['product_name']; ?> cover image">
                    <h2 class='col-11'><?php echo $movie['product_name']; ?></h2>
                    </a>
                </div>
                <?php endforeach;?>
            </section>
        </div>
            <?php include './template/footer.php'; ?>
    </body>
</html>