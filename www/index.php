<?php
session_start();
require 'database.php';

//de sql query
$sql = "SELECT * FROM devices";

//hier wordt de query uitgevoerd met de database
$result = mysqli_query($conn, $sql);

/**
 * Hier wordt het resultaat ($result) omgezet
 * in een *multidimensionale associatieve array
 * in dit voorbeeld staat $all_tools maar dit mag
 * voor bijvoorbeeld producten $all_products heten.
 * Maar dit kies je zelf
 */
$all_tools = mysqli_fetch_all($result, MYSQLI_ASSOC);


// Dit is de eerste pagina van de webshop

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
  <form action="index.php" method="POST">
    <input id="search" name="search" type="text" placeholder="Type here">
    <input id="submit" type="submit" name="submit" value="Search">
  </form>

  <form action="index.php" method="POST">
    Order by Week
    <button type="submit" name="sort_week" class="button" value="1"> Sort Week </button>
  </form>
  <?php if ($_POST['sort_week'] === true) {
    $sql3 =     "SELECT * FROM devices ORDER BY device DESC";

    $result3 = mysqli_query($conn, $sql3);

    $chtools = mysqli_fetch_all($result3, MYSQLI_ASSOC);
    
    ?>
    <table>
      <thead>
        <th>image</th>
        <th>id</th>
        <th>name</th>
        <th>brand</th>
        <th>model</th>
        <th>description</th>
      </thead>
      <?php foreach ($chtools as $toolos) : ?>
        <tbody>
          <td><?php echo $toolos["image_url"] ?></td>

          <td><?php echo $toolos["device_id"] ?></td>
          <td><?php echo $toolos["name"] ?></td>
          <td><?php echo $toolos["brand"] ?></td>
          <td>&euro; <?php echo $toolos["model"] ?></td>
          <td><?php echo $toolos["description"] ?></td>
          <td><a href="detail-page.php?id=<?php echo $toolos['device_id'] ?>">verdere info</a></td>
        </tbody>
      <?php endforeach; ?>

    </table>
  <?php
  } ?>


  <?php
  if (isset($_POST['submit'])) {
    $search = $_POST['search'];
    $sql2 = "SELECT * FROM devices WHERE name LIKE '%$search%'";

    $result2 = mysqli_query($conn, $sql2);

    $searchtools = mysqli_fetch_all($result2, MYSQLI_ASSOC);
  ?>
    <table>
      <thead>
        <th>image</th>
        <th>id</th>
        <th>name</th>
        <th>brand</th>
        <th>model</th>
        <th>description</th>
      </thead>
      <?php foreach ($searchtools as $toolos) : ?>
        <tbody>
          <td><?php echo $toolos["image_url"] ?></td>

          <td><?php echo $toolos["device_id"] ?></td>
          <td><?php echo $toolos["name"] ?></td>
          <td><?php echo $toolos["brand"] ?></td>
          <td>&euro; <?php echo $toolos["model"] ?></td>
          <td><?php echo $toolos["description"] ?></td>
          <td><a href="detail-page.php?id=<?php echo $toolos['device_id'] ?>">verdere info</a></td>
        </tbody>
      <?php endforeach; ?>

    </table>
  <?php
  }

  if (empty($_POST['submit'])) {
  ?>
    <table>
      <thead>
        <th>image</th>
        <th>id</th>
        <th>name</th>
        <th>brand</th>
        <th>model</th>
        <th>description</th>
      </thead>
      <?php foreach ($all_tools as $toolos) : ?>
        <tbody>
          <td><?php echo $toolos["image_url"] ?></td>

          <td><?php echo $toolos["device_id"] ?></td>
          <td><?php echo $toolos["name"] ?></td>
          <td><?php echo $toolos["brand"] ?></td>
          <td>&euro; <?php echo $toolos["model"] ?></td>
          <td><?php echo $toolos["description"] ?></td>
          <td><a href="detail-page.php?id=<?php echo $toolos['device_id'] ?>">verdere info</a></td>
        </tbody>
      <?php endforeach; ?>

    </table>
  <?php
  }

  ?>
</body>

</html>