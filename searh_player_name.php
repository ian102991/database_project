<?php
    include_once "db_conn.php";
    try{
        $a=$_GET["player_name"];
        $query = ("select * from homework4.playdata join homework4.store on playdata.storeName=store.name where playerName=?");
        $stmt= $db->prepare($query);
        $stmt->execute(array($a));
        $result=$stmt->fetchAll();
        echo "<table border='1'>
        <tr>
        <th>店名</th>
        <th>地址</th>
        <th>機台名</th>
        <th>遊玩時間</th>
        </tr>";
        for($i=0;$i<count($result);$i++){
            echo "<tr>";
            echo "<th>".$result[$i]['storeName']."</th>";
            echo "<th>".$result[$i]['city'].$result[$i]['address']."</th>";
            echo "<th>".$result[$i]['cabinetName']."</th>";
            echo "<th>".$result[$i]['playTime']."</th>";
            echo "</tr>";
        }
        echo "<table>";
        echo "<br><input type='button' onclick='history.back()' value='回上頁'>";
    }
    catch(PDOException $e){
        echo "捕获到异常：" . $e->getMessage();
    }
?>