<?php
header("Content-type: application/json");
session_start();


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
$user ="root";
$password = "";

try 
{
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
  $pass = $loginData["pass"];
  if ($usr == '' || $usr === null || $pass == '' || $pass === null) {
    response("JS skipped empty username/password check.\nplease enter username/password.", 500);
  } else {
    try {
      $stmt = $conn->prepare("SELECT * FROM user WHERE azonosito = :usr AND jelszo = :pass");
      $stmt->bindParam(':usr', $usr);
      $stmt->bindParam(':pass', $pass);
      $stmt->execute();
      $row = $stmt->fetch(PDO::FETCH_ASSOC);
      if ($row) {
        response("Found user");
      } else {
        response("User not found.", 401);
      }
      //TODO: Check database, redirect
      //TIP: httpcode 400-499 for bad user info
    } catch (PDOException $e){
      response("Adatbázis hiba:\n".$e->getMessage(), 500);
    }
  }
}

?>