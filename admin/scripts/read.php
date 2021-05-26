<?php

function getAllProducts(){
    $pdo = Database:: getInstance()->getConnection();
    $queryAll = "SELECT * FROM tbl_products";
    $runAll = $pdo->query($queryAll);
    $movies = $runAll->fetchAll(PDO::FETCH_ASSOC);
    if($movies) {
        return $movies;

    } 
    else {
        return 'No data found';
    }
}

function getSpecificProduct($id){
    $pdo = Database:: getInstance()->getConnection();
    $querySingle = 'SELECT * FROM tbl_products WHERE product_id ="'.$id.'"';
    $runSingle = $pdo->query($querySingle);
  
    if($runSingle){
        $movie = $runSingle->fetch(PDO::FETCH_ASSOC);
     return $movie;
    }

    else {
        return 'No data found';
    }
}



function getProductsByGender($gender){
    $pdo = Database:: getInstance()->getConnection();
    $query= 'SELECT m.*, GROUP_CONCAT(g.gender_name) as gender_name FROM tbl_products m';
    $query.= ' LEFT JOIN tbl_pro_gender link ON link.product_id = m.product_id';
    $query.= ' LEFT JOIN tbl_gender g ON link.gender_id = g.gender_id';
    $query.= ' GROUP BY m.product_id';
    $query.= ' HAVING gender_name LIKE "%'.$gender.'%"';
    $runQuery = $pdo->query($query);
    if($runQuery){
      $movies = $runQuery->fetchAll(PDO::FETCH_ASSOC);
      return $movies;
    }

    else {
        return 'No data found';
    }
}
