
<?php
    header("Content-Type: text/html; charset=utf-8");
    include_once "db_conn.php";
    $name = $_POST["name"];
    $city = $_POST["city"];
    $address = $_POST["address"];
    $query = ("insert into store values(?, ?, ?)");
    $stmt = $db -> prepare($query);
    $stmt -> execute(array($name, $city, $address));
    header("Location: arcade_store_inform.php")
?>
