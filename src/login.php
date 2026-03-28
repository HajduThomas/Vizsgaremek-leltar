<?php
require 'dbcon.php';

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
      $stmt = $conn->prepare("SELECT * FROM users WHERE azonosito = :usr AND jelszo = :pass");
      $stmt->bindParam(':usr', $usr);
      $stmt->bindParam(':pass', $pass);
      $stmt->execute();
      $row = $stmt->fetch(PDO::FETCH_ASSOC);
      if ($row) {
        response("Found user", 302);
      } else {
        response("User not found.", 401);
      }
    } catch (PDOException $e){
      response("Adatbázis hiba:\n".$e->getMessage(), 500);
    }
  }
}

?>