
<?php
    include_once "db_conn.php";
    $storeName = $_POST["storeName"];
    $cabinetName = $_POST["cabinetName"];
    $wait = $_POST["wait"];
    $price = $_POST["price"];
    $query = ("update homework4.cabinet set wait = ?, price = ? where storeName = ? and cabinetName = ?");
    $stmt = $db -> prepare($query);
    $result = $stmt -> execute(array($wait, $price, $storeName, $cabinetName));
    header("Location: arcade_cabinet_inform.php")
?>
