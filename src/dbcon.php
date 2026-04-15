<?php

header("Content-type: application/json");

function response($msg, $code=200){
  if (empty($msg)){
    return;
  }
  http_response_code($code);
  echo json_encode($msg);
  exit;
}

$dbname = "tester";
$host = "localhost";
$user ="malog";
$password = "sans";

try {
  $conn = new PDO("mysql:host=$host; dbname=$dbname; charset=utf8", $user, $password);
  $conn ->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e){
  response("Adatbázis kapcsolati hiba:\n{$e->getmessage()}", 500);
}

$method = $_SERVER["REQUEST_METHOD"];

?>