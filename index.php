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
        <link rel="stylesheet" href="css/master.css">
        <title>Welcome to cms</title>
    </head>
    <body>
        <?php include 'template/header.php'; ?> 

        <section class="movie-disp">
            <?php foreach ($getMovies as $movie):?>
            <div class='movie-item'>
            <a href="details.php?id=<?php echo $movie['product_id']; ?>">
                <img src="images/<?php echo $movie['product_img']; ?>" alt="<?php echo $movie['product_name']; ?> cover image">
                <h2><?php echo $movie['product_name']; ?></h2>
                </a>
            </div>
            <?php endforeach;?>
        </section>
            <?php include './template/footer.php'; ?>
    </body>
</html>