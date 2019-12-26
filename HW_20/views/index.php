<?php

use database\Connect;

$example = ('SELECT title,author FROM `books`');

$stm = Connect::getInstance()->prepare($example);
$stm->execute();
$result = $stm->fetchAll(PDO::FETCH_ASSOC);
foreach ($result as $key => $value) {
    echo 'Book: ' . $value['title'] . ' -> Author: ' . $value['author'];
    echo '<br/>';
}