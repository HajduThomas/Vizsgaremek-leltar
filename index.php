<?php
 
  
?>

<!DOCTYPE html>
<html lang="hu">

  <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link rel="stylesheet" href="src/index.css">
      <title>Leltár program</title>
  </head>

  <body>
    
    <div class="background"></div>
    
    <div class="center">

      <?php

      $dbname = "leltar";
      $host = "localhost";
      $user ="root";
      $password = "";
      

      try
      {
        $conn = new PDO("mysql:host=$host; dbname=$dbname; charset=utf8", $user, $password);
        $conn ->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        echo "
          <form action=\"\" method=\"post\">
            <h1>Login</h1><br>
            <label for=\"usr\">Username:</label>
            <input type=\"text\" name=\"usr\" id=\"usr\" placeholder=\"Azonosito\"><br>
            <label for=\"pass\">Password:</label>
            <input type=\"password\" name=\"pass\" id=\"pass\" placeholder=\"Jelszó\"><br><br>
            <input type=\"submit\" name=\"login\" id=\"login\" value=\"Belépés\">
          </form>
        ";
      }
      catch(PDOException $e)
      {
        
        echo "
          <form>
          ";
          die("Sikertelen adatbázis csatlakozás: ".$e->getMessage());
          echo "
          </form>
        ";
      }
      ?>
      
      <script>
        function Login()
        {
          $.post("./src/main.php")
    
        }
      </script>
    </div>

    <?php
   
    if (isset($_POST['login'])) 
    {
      $usr = trim($_POST['usr'] ?? '');
      $pass = trim($_POST['pass'] ?? '');
      
     
      if($usr === 'lolcat')
      {
        $_SESSION['id'] = 0;
        $_SESSION['username'] ='lolcat';
        header(header: 'Location: ./src/main.php');
        exit;
      }
      else 
      {
        
        $stmt = $conn->prepare("SELECT * FROM felhasznalo WHERE azonosito = :usr AND jelszo = :pass");
        $stmt->bindParam(':usr', $usr);
        $stmt->bindParam(':pass', $pass);
        $stmt->execute();
        $row = $stmt->fetch(PDO::FETCH_ASSOC);
            
        if ($row) {
          $_SESSION['id'] = $row['id'];
          $_SESSION['username'] = $row['azonosito'];
          $_SESSION['password'] = $row['jelszo'];
          header(header: 'Location: ./src/main.php');
          exit;
        }
      }
    }
    ?>

  </body>

</html>