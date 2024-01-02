<?php
    include_once "db_conn.php";
    try {
        $a=$_GET["player_name"];
        $query = ("delete from homework4.playdata where playerName=?");
        $stmt= $db->prepare($query);
        $result = $stmt->execute(array($a));
        header('Location: delete_by_player_name.php');
    } catch (PDOException $e) {
        echo "捕获到异常：" . $e->getMessage();
    }
?>
