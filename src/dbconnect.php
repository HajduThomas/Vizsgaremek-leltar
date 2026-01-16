<?php
require_once("config.php");
$dsn = DBTYPE.":host=".DBHOST. "; dbname=".DBNAME. "; charset=".DBCHARSET;
try
{
    $db = new PDO($dsn, DBUSER, DBUSERPW);
    $db -> setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
}
catch(PDOException $e)
{
    $error = "Az adatbázissal való kapcsolat sikertelen!";
}
?>