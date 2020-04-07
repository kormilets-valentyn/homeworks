<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="style.css" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <title>Document</title>
</head>
<body>
<form action="" method="POST">
    <div class="container">
        <div class="row justify-content-md-center">
            <img alt="logo" width="100" src="https://netx.com.ua/templates/vadis/assets/images/logo_b.svg">
        </div>
        <div class="row justify-content-md-center">
            <h3>Форма авторизации</h3>
        </div>
        <div class="row justify-content-md-center">
            <div class="form-group">
                <label for="loginarea">Введите логин</label>
                <input type="text" name="login" class="form-control" id="loginarea" placeholder="Ваш логин" required>
            </div>
        </div>
        <div class="row justify-content-md-center">
            <div class="form-group">
                <label for="passarea">Введите пароль</label>
                <input type="password" name="pass" class="form-control" id="passarea" placeholder="Ваш пароль" required>
            </div>
        </div>
        <div class="row justify-content-md-center">
            <input class="btn btn-primary btn-sm" type="submit" name = "submit" value="Log In">
        </div>
        <div class="row justify-content-md-center">
            <small>(*и да, мы используем кукисы*)</small>
        </div>

    </div>
</form>
<?php
require "connect.php";
$data = $_POST;
$login=$_POST['login'];
$pass=$_POST['pass'];
if (isset($data['submit'])){
    $errors=[];
    $logincheck = $pdo->prepare("SELECT login, password FROM authorization WHERE `login`=?");
    $logincheck->execute([$login]);
    $loginresult = $logincheck->fetch();
    $passcheck = $loginresult['password'];
    if ($loginresult){
        if (password_verify($pass, $passcheck)){
            setcookie("login", $login, time() + 3600*24);
            header('Refresh: 0;url = login.php') ;
        } else echo '<div class="echo">Не верный пароль</div>';
    }else echo '<div class="echo">Не верный логин</div>';
}
?>
</body>
</html>