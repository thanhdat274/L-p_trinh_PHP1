<?php

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng nhập Admin</title>
    <link rel="stylesheet" href="../css/login.css">
</head>
<body>
   <div class="container">
    <form action="" method="post" enctype="multipart/form-data">
        <div class="title">
            <h3>Đăng Nhập</h3>
        </div>
        
        <input type="text" name="username" placeholder="Nhập Username"><br><br>
        <input type="text" name="pass" placeholder="Nhập mật khẩu Admin"><br><br>
        <button class="btnSub" name="subMit" type="submit"><a href="product_list.php">Đăng nhập</a></button>
    </form>
   </div>
</body>
</html>