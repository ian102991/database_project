<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Index</title>
    </head>

    <body>
        <center>
            <form action="arcade_store_inform.php" method="get">
                <h3>查詢店鋪（arcade_store_inform.php）</h3>
                <input type="submit" value="查詢">
            </form>

            <form action="arcade_store_insert.php" method="post">
                <h3>新增店鋪資料（arcade_store_insert.php）</h3>
                店名：<input type="text" name="name">
                <br>
                縣市：<input type="text" name="city">
                <br>
                地址：<input type="text" name="address">
                <br>
                <input type="submit" name="submit" value="新增">
            </form>

            <form action="arcade_store_update.php" method="post">
                <h3>修改店鋪資料，以店名為主（arcade_store_update.php）</h3>
                店名：<input type="text" name="name">
                <br>
                縣市：<input type="text" name="city">
                <br>
                地址：<input type="text" name="address">
                <br>
                <input type="submit" name="submit" value="修改">
            </form>
        </center>
    </body>
</html>