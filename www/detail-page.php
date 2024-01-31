<?php
session_start();
require 'database.php';

$toolId = $_GET['id'];

$sql = "SELECT * FROM devices WHERE device_id = $toolId";

$result = mysqli_query($conn, $sql);

if (!is_object($result)) {
    header("location: productInfo.php");
    exit;
}

if (mysqli_num_rows($result) <= 0) {
    echo "This product doens't exist!!";
    exit;
}

$tool = mysqli_fetch_assoc($result);

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css?<?php echo time(); ?>">
    <title>Document</title>
</head>

<body>
    <h1><?php echo "welkom"  ?></h1>
    <table>
        <thead>
            <th>id</th>
            <th>name</th>
            <th>brand</th>
            <th>model</th>
            <th>description</th>
        </thead>
            <tbody>
                <td><?php echo $tool["device_id"] ?></td>
                <td><?php echo $tool["name"] ?></td>
                <td><?php echo $tool["brand"] ?></td>
                <td>&euro; <?php echo $tool["model"] ?></td>
                <td><?php echo $tool["description"] ?></td>
            </tbody>

    </table>
</body>

</html>

