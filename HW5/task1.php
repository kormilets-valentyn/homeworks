<?php
define("OUR_CONST", 5);
$count  = 0;
for ($i = 1; $i <= 100; $i++){
    if ($i % OUR_CONST == 0){
        $count ++;
    }
}
echo $count;