<?php
    $a=$_GET["player_name"];
    $b=$_GET["new_old_player"];
    $c=$_GET["store_name"];
    $d=$_GET["cabinet_name"];
    $e=$_GET["playtime"];
    $e = new DateTime($e);
    echo $e->format('Y');
?>
