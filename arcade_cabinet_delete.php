<?php
    include_once "db_conn.php";
    $storeName = $_POST["storeName"];
    $cabinetName = $_POST["cabinetName"];
    $query = ("delete from homework4.cabinet where storeName = ? and cabinetName = ?");
    $stmt = $db -> prepare($query);
    $result = $stmt -> execute(array($storeName, $cabinetName));
    header("Location: arcade_cabinet_inform.php")
?>
