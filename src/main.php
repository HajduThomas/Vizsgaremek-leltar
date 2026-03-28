<?php
require 'dbcon.php';

if ($method == "POST") {
  $catData = json_decode(file_get_contents("php://input"), true);
  $currentCategory = $catData["cat"];
  $search = $catData["search"];
  try {

    if ($search !== "" && $search !== null){
      $stmt = $conn->prepare("
      SELECT * FROM $currentCategory
      WHERE nev LIKE :search OR tomegfajta LIKE :search
      ");
      $stmt->execute([
        ":search" => "%$search%"
      ]);
    } else {
      $stmt = $conn->query("SELECT * FROM $currentCategory");
      $data = $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
    response($data);

  } catch (PDOException $e){
    response("Adatbázis hiba:\n".$e->getMessage(), 500);
  }
}

?>