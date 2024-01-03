<?php
    include_once "db_conn.php";
    $name = $_POST["name"];
    $city = $_POST["city"];
    $address = $_POST["address"];
    $query = ("update homework4.store set city = ?, address = ? where name = ?");
    $stmt = $db -> prepare($query);
    $result = $stmt -> execute(array($city, $address, $name));
    header("Location: arcade_store_inform.php")
?>
