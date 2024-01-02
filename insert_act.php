<?php
session_start();
    include_once "db_conn.php";
    try {
        $b=$_GET["player_name"];
        $a=$_GET["new_old_player"];
        $b1=$_GET["password"];
        $c=$_GET["store_name"];
        $d=$_GET["cabinet_name"];
        $e=$_GET["playtime"];
        $e = new DateTime($e);
        if($a == "new" and $_SESSION[$b] == True){
            echo "<script>alert('用戶名重複');location.href = 'game_record_insert.php';</script>";
        }
        else if($a == "old" and $_SESSION[$b] == False){
            echo "<script>alert('尚未登入');location.href = 'game_record_insert.php';</script>";
        }
        else{
            $_SESSION[$b]=$b1;
            $query = ("select max(ID) from homework4.playdata");
            $stmt= $db->prepare($query);
            $stmt->execute();
            $result=$stmt->fetchAll();
            $id=$result[0]['max(ID)']+1;
            $query = ("insert into homework4.playdata values(?,?,?,?,?,?,?)");
            $stmt= $db->prepare($query);
            $result = $stmt->execute(array($id,$a,$b,$b1,$c,$d,$e->format('Y-m-d H:i:s')));
            echo "<script>alert('插入成功');location.href = 'game_record_insert.php';</script>";
        }
    } catch (PDOException $e) {
        echo "捕获到异常：" . $e->getMessage();
    }
?>
