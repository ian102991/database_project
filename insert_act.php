<?php
    include_once "db_conn.php";
    try {
        $b=$_GET["player_name"];
        $a=$_GET["new_old_player"];
        $c=$_GET["store_name"];
        $d=$_GET["cabinet_name"];
        $e=$_GET["playtime"];
        $e = new DateTime($e);
        $query = ("select max(ID) from homework4.playdata");
        $stmt= $db->prepare($query);
        $stmt->execute();
        $result=$stmt->fetchAll();
        $id=$result[0]['max(ID)']+1;
        $query = ("insert into homework4.playdata values(?,?,?,?,?,?)");
        $stmt= $db->prepare($query);
        $result = $stmt->execute(array($id,$a,$b,$c,$d,$e->format('Y-m-d H:i:s')));
        header('Location: game_record_insert.php');
    } catch (PDOException $e) {
        echo "捕获到异常：" . $e->getMessage();
    }
?>
