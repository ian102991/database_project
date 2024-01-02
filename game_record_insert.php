<html>
    <head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
	<title>遊戲機台紀錄系統</title>
	<style>
		header {
			height: 60px;
			weight: 100px;
			background-color: Gold;
		}

		header h1 {
			position: absolute;
			left: 50px;
			line-height: 20px;
			top:10px;
		}
		</style>
    </head>
    <body>
        <header>
			<h1>遊戲機台紀錄系統</h1>
		</header>
        <main>
            <?php
                date_default_timezone_set('Asia/Taipei');
                $nowtime = date('Y-m-d\TH:i:s');
            ?>
            <form action="insert_act.php" method="get">
                請輸入玩家名:<input name="player_name"><br>
                請輸入店名:<input name="store_name"><br>
                請輸入機器名:<input name="cabinet_name"><br>
                <input type="datetime-local" name="playtime" value="<?php echo $nowtime; ?>" required><br>
                <input type="radio" name="new_old_player" value="new"> 新玩家註冊<br>
                <input type="radio" name="new_old_player" value="old"> 舊玩家<br>
                <input type="submit" onclick="f()" class="btn btn-warning">
            </form>
            <script>
                function f(){
                    alert("插入成功");
                }
            </script>
		</main>
    </body>
</html>