<?php
session_start();
$dbname = "leltar";
$host = "localhost";
$user ="root";
$password = "";
$port = 3306;

$conn = new mysqli($host, $user, $password, $dbname, $port);

if($conn-> connect_error)
{
  die("Sikertelen csatlakozás: ".$conn->connect_error);
}
$hibaUzenet = "";

if(isset($_POST['login']))
{
  $usr = trim($_POST['usr'] ?? '');
  $pass = trim($_POST['pass'] ?? '');

  if(empty($usr) || empty($pass))
  {
    echo"<script>alert('Adjon meg felhasználónevet és jelszót is!')</script>";
  }
  else
  {
    $result = $conn->query("SELECT * FROM felhasznalo");
    $felhasznalok = $result ? $result->fetch_all(MYSQLI_ASSOC) : [];
    for($i = 0; $i < count($felhasznalok); $i++)
    {
      $row = $felhasznalok[$i];
      if($row['azonosito'] === $usr && $row['jelszo'] === $pass)
      {
        $_SESSION['id'] = $row['id'];
        $_SESSION['username'] = $row['azonosito'];
        $_SESSION['password'] = $row['jelszo'];
        header('Location: ./src/config.php');
        exit;
      }
    }

  }
}

?>


<!DOCTYPE html>
<html lang="en">

  <head>
    
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link rel="stylesheet" href="src/index.css">

      <title>Leltár program</title>

  </head>

  <body>
    
    <div class="background"></div>
    
    <div class="center">
      <form action="" method="post">
        <h1>Login</h1><br>
        <label for="usr">Username:</label>
        <input type="text" name="usr" id="usr"><br>
        <label for="pass">Password:</label>
        <input type="password" name="pass" id="pass"><br><br>
        <input type="submit" name="login" id="login" value="Belépés">
      </form>
    </div>

  </body>

</html>