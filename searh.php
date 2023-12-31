<html>

<head>
	<title>遊戲機台紀錄系統</title>
	<style>
		header {
			height: 50px;
			weight: 100px;
			background-color: Gold;
		}

		header h1 {
			position: absolute;
			left: 50px;
			top: 0;
			line-height: 20px;
		}

		header ul {
			position: absolute;
			right: 5vw;
			top: 0;
			line-height: 30px;

		}

		header li {
			display: inline;
			margin-right: 4vw;
		}

		header a {
			text-decoration: none;
		}

		header a:hover {
			text-decoration: underline;
		}

		.pic {
			text-align: center;
			display: block;
		}
		.player{
			display: none;
		}
		.date{
			display: none;
		}
		#menu {
			display: none;
		}

		@media screen and (max-width: 768px) {
			.line {
				width: 20px;
				height: 18px;
				background: #FFF;
				background-color: Gold;
				cursor: pointer;
				display: block;
				padding: 16px;
				position: fixed;
				z-index: 2;
				right: 20px;
			}
			.pic {
				text-align: center;
				display: block;
			}
			.player{
				display: none;
			}
			.date{
				display: none;
			}
			.line .menu,
			.line .menu::before,
			.line .menu::after {
				background: #222;
				content: '';
				display: block;
				height: 1px;
				position: absolute;
				transition: background ease .3s, top ease .3s .3s, transform ease .3s;
				width: 20px;
			}

			.line .menu {
				left: 18px;
				top: 27px;
			}

			.line .menu::before {
				top: -6px;
			}

			.line .menu::after {
				top: 6px;
			}

			/*
點選選單變叉叉
*/
			#menu:checked+.line .menu {
				background: transparent;
			}

			#menu:checked+.line .menu::before {
				transform: rotate(45deg);
			}

			#menu:checked+.line .menu::after {
				transform: rotate(-45deg);
			}

			#menu:checked+.line .menu::before,
			#menu:checked+.line .menu::after {
				top: 0;
				transition: top ease .3s, transform ease .3s .3s;
			}

			/*
選單開合
*/
			#menu:checked~.menu-list {
				width: 200px;
			}

			.menu-list {
				width: 0px;
				height: 100vh;
				background: #FFF;
				box-shadow: 0 2px 4px rgba(0, 0, 0, .1);
				background-color: Gold;
				padding-top: 60px;
				position: fixed;
				z-index: 1;
				transition: all .6s;
				overflow: hidden;
				right: 20px;
			}
			.menu-list ul {
				list-style: none;
				padding: 0;
			}

			.menu-list ul>li {
				display: block;
				width: 100px;
			}

			/*
隱藏核許框
*/
			input#menu {
				display: none;
			}
		}
	</style>
</head>

<body>
	<header>
		<input type="checkbox" id="menu">
		<label for="menu" class="line">
			<div class="menu"></div>
		</label>
		<h1>遊戲機台紀錄系統</h1>
		<div class="menu-list">
			<ul>
                <li><a href="index.php">首頁</a></li>
				<li><a href="searh_all_show.php">全部顯示</a></li>
				<li><a href="#" onclick="show_input_player()">以玩家名搜尋</a></li>
				<li><a href="#" onclick="show_input_date()">以指定時間搜尋</a></li>
			</ul>
		</div>
	</header>
	<main>
		<div class="pic" id="pic">
			<img src='https://shoplineimg.com/5fa3d2b246e9ed0029f5f6bf/6437c7fca4337e0020b5df7f/800x.jpg?'>
		</div>
		<div class="player" id="player">
			<form action="searh_player_name.php" method="get">
				<input name="player_name" placeholder="請輸入玩家名"><br>
				<input type="submit">
			</form>
		</div>
		<div class="date" id="date">
			<form action="searh_date.php" method="get">
				起始時間:<input type="datetime-local" id="date1" name="date1" onchange="changedate2()" required><br>
				結束時間:<input type="datetime-local" id="date2" name="date2" required><br>
				<input type="submit">
			</form>
		</div>
		<script>
			function changedate2(){
				var datetimeInput1 = document.getElementById('date1');
				var datetimeInput2 = document.getElementById('date2');
				datetimeInput2.min=datetimeInput1.value;
			}
			function show_input_player(){
				var t=document.getElementById("pic");
				var t1=document.getElementById("player");
				var t2=document.getElementById("date");
				t1.style.display = "block";
				t.style.display = "none";
				t2.style.display = "none";
			}
			function show_input_date(){
				var t=document.getElementById("pic");
				var t1=document.getElementById("player");
				var t2=document.getElementById("date");
				t1.style.display = "none";
				t.style.display = "none";
				t2.style.display = "block";
			}
		</script>
	</main>
</body>

</html>