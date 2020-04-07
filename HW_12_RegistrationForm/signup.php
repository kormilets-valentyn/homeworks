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
<p></p>
<form action="" method="POST">
    <div class="container">
        <div class="row justify-content-md-center">
            <h3>Форма регистрации</h3>
        </div>
        <div class="row justify-content-md-center">
            <div class="form-group">
                <label for="loginarea">Введите логин</label>
                <input type="text" name="login" class="form-control" id="loginarea" placeholder="Your login"
                       value="<?php echo $_POST['login'];?>" required>
            </div>
        </div>
        <div class="row justify-content-md-center">
            <div class="form-group">
                <label for="passarea">Введите пароль</label>
                <input type="password" name="pass" class="form-control" id="loginarea" placeholder="Your password" required>
            </div>
        </div>
        <div class="row justify-content-md-center">
            <div class="form-group">
                <label for="passarea2">Повторите пароль</label>
                <input type="password" name="pass2" class="form-control" id="passarea2" placeholder="Repeat password" required>
            </div>
        </div>
        <div class="row justify-content-md-center">
            <div class="form-group">
                <label for="namearea">Введите Ваше имя</label>
                <input type="text" name="name" class="form-control" id="namearea" placeholder="Your name"
                       value="<?php echo $_POST['name'];?>" required>
            </div>
        </div>
        <div class="row justify-content-md-center">
            <div class="form-group">
                <label for="emailarea">Введите Ваш e-mail</label>
                <input type="email" name="email" class="form-control" id="emailarea" placeholder="Your email"
                       value="<?php echo $_POST['email'];?>" required>
            </div>
        </div>
        <div class="row justify-content-md-center">
            <input type="submit" class="btn btn-primary btn-sm" name = "submit" value="Зарегистрироваться"><br/>
        </div>
</form>
<?php
require "connect.php";
$registration = $_POST;
$name=$_POST['name'];
$pass=$_POST['pass'];
$pass2=$_POST['pass2'];
$login=$_POST['login'];
$email=$_POST['email'];
if (isset($registration['submit'])) {
    $errors = [];
    if(!preg_match("/^[a-zA-Z0-9_]+$/", $login)){
        $errors[] .= "В поле логина введены недопустимые символы";
    }
    $statement = $pdo->prepare("SELECT COUNT(*) FROM authorization WHERE `login`=? group by `login`");
    $statement->execute([$login]);
    $loginCount = $statement->fetch();
    if ($loginCount > 0){
        $errors[] .= "Пользователь с таким логином уже существует";
    }
    $mailval = $pdo->prepare("SELECT COUNT(*) FROM authorization WHERE `email`=? group by `email`");
    $mailval->execute([$email]);
    $emailCount = $mailval->fetch();
    if ($emailCount > 0){
        $errors[] .= "Пользователь с таким e-mail уже существует";
    }
    if ($pass2 !== $pass) {
        $errors[] .= "Повторный пароль введен не верно!";
    }
    if (empty($errors)) {
        $sql = "insert into `authorization` (`login`, `password`, `name`, `email`) values (?, ?, ?, ?)";
        $pdo->prepare($sql)->execute([$login, password_hash($_POST['pass'], PASSWORD_DEFAULT), $name, $email]);
        echo '<div class="echok">Вы зарегистрированы!</div>';
        header('Refresh: 5; url = signin.php');
        echo '<div class="echok">Через 5 секунд Вы будете автоматически перенаправлены на другую страницу.</div>';
        exit;
    } else echo '<div class="echo">' . array_shift($errors) . '</div>';
}
?>
</body>
</html>
