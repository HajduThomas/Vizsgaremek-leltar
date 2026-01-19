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
$conn->set_charset("utf8mb4");
$felhasznalok_lower = mb_strtolower($row['azonosito'], 'UTF-8');
$hibaUzenet = "";

if(isset($_POST['login']))
{
  $usr = trim($_POST['usr'] ?? '');
  $pass = trim($_POST['pass'] ?? '');
  $usr = mb_strtolower($usr, 'UTF-8');

  if(empty($usr) || empty($pass))
  {
    echo"<script>alert('Adjon meg felhasználónevet és jelszót is!')</script>";
  }
  else
  {
    $result = $conn->query("SELECT * FROM felhasznalo");
    $felhasznalok = $result ? $result->fetch_all(MYSQLI_ASSOC) : [];
    $talalt = false;
    if(empty($usr))
    {
      echo"<script>alert('Adjon meg felhasználónevet!')</script>";
    }
    else
    {
      $result = $conn->query("SELECT * FROM felhasznalo");
      $felhasznalok = $result ? $result->fetch_all(MYSQLI_ASSOC) : [];
      $talalt = false;
      for($i = 0; $i < count($felhasznalok); $i++)
      {
        $row = $felhasznalok[$i];
        if($row['azonosito'] === $usr && $row['jelszo'] === $pass && $pass === 'lolcat')
        {
          $_SESSION['id'] = $row['id'];
          $_SESSION['username'] = $row['azonosito'];
          $_SESSION['password'] = $row['jelszo'];
          $talalt = true;
          header('Location: ./src/main.php');
          exit;
        }
      }
    }
    if(!$talalt)
    {
      echo"<script>alert('Adjon meg felhasználónevet!')</script>";
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
        <input type="text" name="usr" id="usr" placeholder="Felhasználónév"><br>
        <label for="pass">Password:</label>
        <input type="password" name="pass" id="pass" placeholder="Azonosító"><br><br>
        <input type="submit" name="login" id="login" value="Belépés">
      </form>
    </div>

  </body>

</html>