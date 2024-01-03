<?php
    include_once "db_conn.php";
    try{
        $a=$_GET["player_name"];
        $query = ("create or replace view playdata_store as select storeName,city,address,cabinetName,playTime,playerName from homework4.playdata join homework4.store on playdata.storeName=store.name");
        $stmt= $db->prepare($query);
        $stmt->execute();
        $query = ("create or replace function play_times(player_name varchar(20))
                    returns integer
                    begin
                    declare cnt integer;
                    select count(*) into cnt
                    from homework4.playdata
                    where playerName=player_name;
                    return cnt;
                    end");
        $stmt= $db->prepare($query);
        $stmt->execute();
        $query = ("select play_times(?) from homework4.playdata");
        $stmt= $db->prepare($query);
        $stmt->execute(array($a));
        $result=$stmt->fetchAll();
        echo "遊玩次數 : ".$result[0][0]."<br>";
        $query = ("select * from playdata_store where playerName=?");
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