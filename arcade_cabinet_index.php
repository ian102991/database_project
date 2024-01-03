<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Index</title>
    </head>

    <body>
        <center>
            <form action="arcade_cabinet_inform.php" method="get">
                <h3>查詢機台（arcade_cabinet_inform.php）</h3>
                <input type="submit" value="查詢">
            </form>

            <form action="arcade_cabinet_inform_advanced.php" method="post">
                <h3>查詢機台，以機台名稱為主（arcade_cabinet_inform_advanced.php）</h3>
                機台名稱：<input type="text" name="cabinetName">
                <input type="submit" name="submit" value="查詢">
            </form>

            <form action="arcade_cabinet_insert.php" method="post">
                <h3>新增機種資料（arcade_cabinet_insert.php）</h3>
                店名：<input type="text" name="storeName">
                <br>
                機台名稱：<input type="text" name="cabinetName">
                <br>
                排隊方式：<input type="text" name="wait">
                <br>
                投幣方式：<input type="text" name="price">
                <br>
                <input type="submit" name="submit" value="新增">
            </form>

            <form action="arcade_cabinet_update.php" method="post">
                <h3>修改機台資料，以店名與機種為主（arcade_cabinet_update.php）</h3>
                店名：<input type="text" name="storeName">
                <br>
                機台名稱：<input type="text" name="cabinetName">
                <br>
                排隊方式：<input type="text" name="wait">
                <br>
                投幣方式：<input type="text" name="price">
                <br>
                <input type="submit" name="submit" value="修改">
            </form>
        </center>
    </body>
</html>