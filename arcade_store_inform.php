<?php
    header("Content-Type: text/html; charset=utf-8");
    include_once "arcade_connect.php";
    echo "<table border = '1'>
    <tr>
    <th>店名</th>
    <th>縣市</th>
    <th>地址</th>
    </tr>";

    $query = ("select * from store");
    $stmt = $db -> prepare($query);
    $stmt -> execute();
    $result = $stmt -> fetchAll();
    for($i = 0; $i < count($result); $i++){
        echo "<tr>";
        echo "<td>".$result[$i]['name']."</td>";
        echo "<td>".$result[$i]['city']."</td>";
        echo "<td>".$result[$i]['address']."</td>";
        echo "</tr>";
    }
    echo "</table>";
    echo "<br><input type = 'button' onclick = 'history.back()' value = '回到前一頁'></input>";
?>