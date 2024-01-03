<?php
    header("Content-Type: text/html; charset=utf-8");
    include_once "arcade_connect.php";
    echo "<table border = '1'>
    <tr>
    <th>店名</th>
    <th>機台名稱</th>
    <th>排隊方式</th>
    <th>投幣方式</th>
    </tr>";

    $cabinetName = $_POST["cabinetName"];
    $query = ("select * from cabinet where cabinetName = ? order by ID asc");
    $stmt = $db -> prepare($query);
    $stmt -> execute(array($cabinetName));
    $result = $stmt -> fetchAll();
    for($i = 0; $i < count($result); $i++){
        echo "<tr>";
        echo "<td>".$result[$i]['storeName']."</td>";
        echo "<td>".$result[$i]['cabinetName']."</td>";
        echo "<td>".$result[$i]['wait']."</td>";
        echo "<td>".$result[$i]['price']."</td>";
        echo "</tr>";
    }
    echo "</table>";
    echo "<br><input type = 'button' onclick = 'history.back()' value = '回到前一頁'></input>";
?>