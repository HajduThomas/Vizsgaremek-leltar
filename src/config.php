<?php
$host = "localhost";
$user ="root";
$password = "";
$dbname = "leltar";

$conn = new mysqli($host, $user, $password, $dbname);

if($conn-> connect_error)
{
    die("Sikertelen adatbázis csatlakozás: ".$conn->connect_error);
}
?>