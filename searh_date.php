<?php
try{
    include_once "db_conn.php";
    $a=$_GET["date1"];
    $b=$_GET["date2"];
    $a=new datetime($a);
    $b=new datetime($b);
    $query = ("select *,count(*) from ((select * from homework4.playdata where UNIX_TIMESTAMP(playTime) < UNIX_TIMESTAMP(?)) except (select * from homework4.playdata where UNIX_TIMESTAMP(playTime) < UNIX_TIMESTAMP(?))) as a group by playerName");
    $stmt= $db->prepare($query);
    $stmt->execute(array($b->format('Y-m-d H:i:s'),$a->format('Y-m-d H:i:s')));
    $result=$stmt->fetchAll();
    echo "<table border='1'>
    <tr>
    <th>玩家名</th>
    <th>遊玩次數</th>
    </tr>";
    for($i=0;$i<count($result);$i++){
        echo "<tr>";
        echo "<th>".$result[$i]['playerName']."</th>";
        echo "<th>".$result[$i]['count(*)']."</th>";
        echo "</tr>";
    }
    echo "</table>";
    echo "<br>";
    $query = ("(select * from homework4.playdata where UNIX_TIMESTAMP(playTime) < UNIX_TIMESTAMP(?)) except (select * from homework4.playdata where UNIX_TIMESTAMP(playTime) < UNIX_TIMESTAMP(?))");
    $stmt= $db->prepare($query);
    $stmt->execute(array($b->format('Y-m-d H:i:s'),$a->format('Y-m-d H:i:s')));
    $result=$stmt->fetchAll();
    echo "<table border='1'>
    <tr>
    <th>新舊玩家</th>
    <th>玩家名</th>
    <th>店名</th>
    <th>機台名</th>
    <th>遊玩時間</th>
    </tr>";
    for($i=0;$i<count($result);$i++){
        echo "<tr>";
        echo "<th>".$result[$i]['new_old_player']."</th>";
        echo "<th>".$result[$i]['playerName']."</th>";
        echo "<th>".$result[$i]['storeName']."</th>";
        echo "<th>".$result[$i]['cabinetName']."</th>";
        echo "<th>".$result[$i]['playTime']."</th>";
        echo "</tr>";
    }
    echo "</table>";
    echo "<br><input type='button' onclick='history.back()' value='回上頁'>";
}
catch(PDOException $e){
    echo "捕获到异常：" . $e->getMessage();
}
?>