<?php
    include_once "arcade_connect.php";
    $storeName = $_POST["storeName"];
    $cabinetName = $_POST["cabinetName"];
    $query = ("delete from cabinet where storeName = ? and cabinetName = ?");
    $stmt = $db -> prepare($query);
    $result = $stmt -> execute(array($storeName, $cabinetName));
    header("Location: arcade_cabinet_inform.php")
?>