<?php
include_once ($_SERVER['DOCUMENT_ROOT'] . '/src/models/connect.php');
 class Result{
    public static function getMessage()
    {
        $host = '127.0.0.1';
        $db   = 'sparrow';
        $user = 'root';
        $pass = 'root';
        $charset = 'utf8';
        $dsn = "mysql:host=$host;dbname=$db;charset=$charset";
        $opt = [
            PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION,
            PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
            PDO::ATTR_EMULATE_PREPARES   => false,
        ];
        $pdo = new PDO($dsn, $user, $pass, $opt);
        $ask = "SELECT title FROM sparrow WHERE id=1";
        $getPost = $pdo ->query($ask);
        $row = $getPost->fetch();
        $result = '';
        foreach ($row as $value){
            $result .= $value;
    }
        return $result;
}

}