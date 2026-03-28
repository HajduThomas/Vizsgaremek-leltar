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

$method = $_SERVER["REQUEST_METHOD"];   // GET / POST / PUT / DELETE
$uri = $_SERVER["REQUEST_URI"];     // localhost/restful/szerver.php/filmek/1
$path = trim(parse_url($uri,PHP_URL_PATH),"/");   // fimek/1
$pathArray = explode("/",$path);

$categories = [
  "showcase" => "Showcase",
  "sizetest" => "Size Test",
  "Music" => "Music",
  "vegyiaruk" => "Vegyiaruk",
  "tejtermek" => "Tejtermekek",
  "szarazaruk" => "Szarazaruk",
  "mirelit" => "Mirelit Aru"
];

if ($method == "POST") {
  $catData = json_decode(file_get_contents("php://input"), true);
  $currentCategory = $catData["cat"];
  $search = $catData["search"];
  try {

    if (!array_key_exists($currentCategory, $categories)) {
      $currentCategory = 'showcase';
    }

    if ($search !== "" && $search !== null){
      $stmt = $conn->prepare("
      SELECT * FROM $currentCategory
      WHERE nev LIKE :search OR tomegfajta LIKE :search
      ");
      $stmt->execute([
        ":search" => "%$search%"
      ]);
    } else {
      $stmt = $conn->query("DESCRIBE $currentCategory");
      $cols = array($stmt->fetchAll(PDO::FETCH_COLUMN));
      $stmt = $conn->query("SELECT * FROM $currentCategory");
      $data = $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    
    response($cols+$data);

  } catch (PDOException $e){
    response("Adatbázis hiba:\n".$e->getMessage(), 500);
  }
}

?>