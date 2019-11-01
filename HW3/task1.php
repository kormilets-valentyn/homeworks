<?php
function file_array ($x){
    $file_array = file($x, FILE_IGNORE_NEW_LINES);//константа пропускает перенос на новую строку в конце каждого элемента массива
    return $file_array;
}
function write_file_array($pathToFile, $text) {
    file_put_contents ($pathToFile, $text);
    return true;
}
$readed = file_array("file1.txt"); //файл должен называться file1.txt
$count = count ($readed);
$new_array = [];
for ($i = 0; $i < $count; $i += 2){
    $new_array[] = $readed[$i];
}
write_file_array('file2.txt',implode(PHP_EOL, $new_array)); //файл, в который происходит запись file2.txt, склейка по EOL
?>