<!DOCTYPE html>
<html lang="hu">

  <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link rel="stylesheet" href="src/index.css">
      <title>Login</title>
  </head>

  <body>
    
    <div class="background"></div>

    <?php
    //I pushed the php up here to allow the background and stuff to load.
    //sliced off the session start, might put it back up top later
    session_start();

    ?>
    
    <div class="center">

      <?php
      //We yet to learn php functions and stuff, but
      // this could be done with a function that returns the page contents
      //
      //I REALLY hate this
      //I do not like how php echos the site, it should be done using js
      //works for now but I'll rewrite it when I'm done with main

      $dbname = "leltar";
      $host = "localhost";
      $user ="root";
      $password = "";

      try
      {
        $conn = new PDO("mysql:host=$host; dbname=$dbname; charset=utf8", $user, $password);
        $conn ->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        //Return the login form when the connection is good.
        echo "
          <form action=\"\" method=\"post\">
            <h1>Login</h1>
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
        //Return error form when the connection is bad
        //allows me to style the error
        echo "
          <form>
          ";
          die("Sikertelen adatbázis csatlakozás: ".$e->getMessage());
          echo "
          </form>
        ";
      }

      ?>
     
    </div>

    <?php
    //I don't like this, cannot properly handle bad passwords/users not found
    //It just reloads the page with no output
    if (isset($_POST['login'])) {

      $usr = trim($_POST['usr'] ?? '');
      $pass = trim($_POST['pass'] ?? '');
      //Don't use this, keep it case sensitive
      //$usr = mb_strtolower($usr, 'UTF-8');

      //this check should be done using javascript
      //this sends the form even if it's wrong
      if (empty($usr)) {
        echo "<script>alert('Adjon meg felhasználónevet!')</script>";
      } else {
        
        //This might be vulnerable to sql code exec, need to look into it.
        $stmt = $conn->prepare("SELECT * FROM felhasznalo WHERE azonosito = :usr AND jelszo = :pass");
        $stmt->bindParam(':usr', $usr);
        $stmt->bindParam(':pass', $pass);
        $stmt->execute();
        $row = $stmt->fetch(PDO::FETCH_ASSOC);
            
        if ($row) {
          $_SESSION['id'] = $row['id'];
          $_SESSION['username'] = $row['azonosito'];
          $_SESSION['password'] = $row['jelszo'];
          header('Location: ./src/main.php');
          exit;
        }
      }
    }
    ?>

  </body>

</html>