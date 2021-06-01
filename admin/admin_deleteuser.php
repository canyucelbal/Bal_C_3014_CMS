<?php
 require_once '../load.php';
 confirm_logged_in(true);
if(isset($_GET['id'])){
    $delete_user_id = $_GET['id'];

    $delete_result = deleteProduct($delete_user_id);

    if(!$delete_result){
        $message = 'failed to delete user';
    }


}
 $users = getAllUsers();

 if(!$users){
     $message = 'failed to get users list';
 }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge"> 
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delete User</title>
</head>
<body>
    <h2>Delete User</h2>
    <?php echo !empty($message) ? $message : ''; ?>
<a href="index.php">Back to Dashboard page</a>
    <table>
        <thead>
            <tr>
                <th>Product Name</th>
                <th>Product Description</th>
                <th>Product Price</th>
                <th>Delete</th>
            </tr>
        </thead>

        <tbody>
            <?php while($single_user = $users->fetch(PDO::FETCH_ASSOC)): ?>

            <tr>
                <td><?php echo $single_user['product_name']; ?></td>
                <td><?php echo $single_user['product_description']; ?></td>
                <td><?php echo $single_user['product_price']; ?></td>
                <td><a href="admin_deleteuser.php?id=<?php echo $single_user['product_id']; ?>">Delete</a></td>
            </tr>
            <?php endwhile; ?>
        </tbody>
    </table>
</body>
</html>
