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
            <form action="delete_act.php" method="get">
                <input name="player_name" placeholder="請輸入玩家名"><br>
                <input type="submit" onclick="f()" class="btn btn-warning">
            </form>
            <script>
                function f(){
                    alert("刪除成功");
                }
            </script>
		</main>
    </body>
</html>