
<?php
    header("Content-Type: text/html; charset=utf-8");
    include_once "db_conn.php";
    $storeName = $_POST["storeName"];
    $cabinetName = $_POST["cabinetName"];
    $wait = $_POST["wait"];
    $price = $_POST["price"];
    $query = ("insert into cabinet values(null, ?, ?, ?, ?)");
    $stmt = $db -> prepare($query);
    $stmt -> execute(array($storeName, $cabinetName, $wait, $price));
    header("Location: arcade_cabinet_inform.php")
?>
