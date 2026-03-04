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

$dbname = "leltar";
$host = "localhost";
$user ="malog";
$password = "sans";

try {
  $conn = new PDO("mysql:host=$host; dbname=$dbname; charset=utf8", $user, $password);
  $conn ->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e){
  response("Adatbázis kapcsolati hiba", 500);
}

$method = $_SERVER["REQUEST_METHOD"];   // GET / POST / PUT / DELETE
$uri = $_SERVER["REQUEST_URI"];     // localhost/restful/szerver.php/filmek/1
$path = trim(parse_url($uri,PHP_URL_PATH),"/");   // fimek/1
$pathArray = explode("/",$path);

if ($method == "GET") {
  response("ok");
}

if ($method == "POST") {
  $loginData = json_decode(file_get_contents("php://input"), true);
  $usr = $loginData["usr"];
  if ($usr == '' || $usr === null) {
    response("How?", 500);
  } else {
    try {
      response($usr);
      //TODO: Check database, redirect
      //TIP: httpcode 400-499 for bad user info
    } catch (PDOException $e){
      response("Adatbázis hiba", 500);
    }
  }
}

?>