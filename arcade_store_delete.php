<?php
    include_once "arcade_connect.php";
    $name = $_POST["name"];
    $query = ("delete from store where name = ?");
    $stmt = $db -> prepare($query);
    $result = $stmt -> execute(array($name));
    header("Location: arcade_store_inform.php")
?>