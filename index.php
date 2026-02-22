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
    session_start();
    ?>

    <div class="center">

    <?php
      $dbname = "leltar";
      $host = "localhost";
      $user = "root";
      $password = "";

      $error = '';
      $usr = '';

      try {
        $conn = new PDO("mysql:host=$host; dbname=$dbname; charset=utf8", $user, $password);
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        if (isset($_POST['login'])) {
          $usr = trim($_POST['usr'] ?? '');
          $pass = trim($_POST['pass'] ?? '');

          if (empty($usr)) {
            $error = 'Adjon meg felhasználónevet!';
          } else {
            if ($usr === 'lolcat') 
            {
              // lolcat esetén jelszó nélkül is beengedjük, ha létezik a felhasználó
              $stmt = $conn->prepare("SELECT * FROM felhasznalo WHERE azonosito = :usr");
              $stmt->bindParam(':usr', $usr);
            } 
            else 
            {
              if (empty($pass)) 
                {
                    $error = 'Adjon meg jelszót!';
                } 
              else 
                {
                    $stmt = $conn->prepare("SELECT * FROM felhasznalo WHERE azonosito = :usr AND jelszo = :pass");
                    $stmt->bindParam(':usr', $usr);
                    $stmt->bindParam(':pass', $pass);
                }
            }

            if (!empty($stmt)) 
            {
              $stmt->execute();
              $row = $stmt->fetch(PDO::FETCH_ASSOC);

              if ($row) 
                {
                    $_SESSION['id'] = $row['id'];
                    $_SESSION['username'] = $row['azonosito'];
                    $_SESSION['password'] = $row['jelszo'];
                    header('Location: ./src/main.php');
                    exit;
                } 
                else 
                {
                    $error = 'Helytelen felhasználó vagy jelszó';
                }
            }
          }
        }

        echo "
          <form action=\"\" method=\"post\">
            <h1>Login</h1><br>
        ";

        if ($error && $error === 'Helytelen felhasználó vagy jelszó') 
        {
            echo "<p style=\"color: red;\">" . htmlspecialchars($error) . "</p><br>";
        } 
        elseif ($error) 
        {
          // Az empty hibákat nem írjuk ki a formba, mert JS kezeli, de PHP véd
        }

        echo "
            <label for=\"usr\">Username:</label>
            <input type=\"text\" name=\"usr\" id=\"usr\" placeholder=\"Azonosito\" value=\"" . htmlspecialchars($usr) . "\"><br>
            <label for=\"pass\">Password:</label>
            <input type=\"password\" name=\"pass\" id=\"pass\" placeholder=\"Jelszó\"><br><br>
            <input type=\"submit\" name=\"login\" id=\"login\" value=\"Belépés\">
          </form>
        ";
      } 
      catch (PDOException $e) 
      {
        echo "<form>";
        die("Sikertelen adatbázis csatlakozás: " . $e->getMessage());
        echo "</form>";
      }
      ?>

    </div>

    <script>
    document.addEventListener('DOMContentLoaded', function() 
    {
        const form = document.querySelector('form');
        if (form)
          {
            form.addEventListener('submit', function(event) 
            {
                const usrInput = document.getElementById('usr');
                const passInput = document.getElementById('pass');
                const usr = usrInput.value.trim();
                const pass = passInput.value.trim();
                
                if (!usr) 
                  {
                    alert('Adjon meg felhasználónevet!');
                    event.preventDefault();
                    return;
                }
                
                //lolcat ideiglenes
                else if (usr === 'lolcat') 
                {
                    return;
                }
                
                else if (!pass) 
                {
                    alert('Adjon meg jelszót!');
                    event.preventDefault();
                }
            });
        }
    });
    </script>

<?php ob_end_flush(); ?>

  </body>

</html>