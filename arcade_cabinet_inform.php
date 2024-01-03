<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
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

		header ul {
			position: absolute;
			right: 5vw;
			top: 10px;
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
		}

		#menu {
			display: none;
		}

        table{
            border: 5px solid black;
        }

        th, td {
            border: 3px solid grey;
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
            <h1>店鋪資訊</h1>
            <div class="menu-list">
			<ul>
				<li><a href="arcade_cabinet_index.php">回到前一頁</a></li>
                		<li><a href="index.php">回到首頁</a></li>
			</ul>
		</div>
        </header>
        <?php
            header("Content-Type: text/html; charset=utf-8");
            include_once "db_conn.php";
            echo "<table border = '1'>
            <tr>
            <th>店名</th>
            <th>機台名稱</th>
            <th>排隊方式</th>
            <th>投幣方式</th>
            </tr>";

            $query = ("select * from cabinet order by ID asc");
            $stmt = $db -> prepare($query);
            $stmt -> execute();
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
        ?>
    </body>
</html>
