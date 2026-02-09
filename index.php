<?php
session_start();
ob_start();

$dbname = "leltar";
$host = "localhost";
$user = "root";
$password = "";

$loginError = false;
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
        
        echo 
        "
          <form>
          ";
          die("Sikertelen adatbázis csatlakozás: ".$e->getMessage());
          echo "
          </form>
        ";
      }

      
      ?>
    </div>

    <script>
      document.addEventListener('DOMContentLoaded', function()
      {
         const form = document.querySelector('form');
          form.addEventListener('submit', function(event)
          {
            event.preventDefault();
            const usrInput = document.getElementById('usr');
            const passInput = document.getElementById('pass');

            //PHP-ból áthozva
            const usr = usrInput.value.trim();
            const pass = passInput.value.trim();

            if(usrInput)
            {
              usrInput.value = usrInput.value.trim();
            }
            if(passInput)
            {
              passInput.value = passInput.value.trim();
            }

            if(usrInput.value === '' && passInput.value === '' )
            {
              alert('Adjon meg azonosítót és jelszót is!');
              return;
            }

            if(usrInput.value === '')
            {
              alert('Adjon meg azonosítót!');
              return;
            }

            //Ideiglenes
            if (usrInput.value === 'lolcat' && passInput.value !== '') 
            {
              return;
            }
           
            //A lolcat része Ideiglenes
            if(usrInput.value !== 'lolcat' && passInput.value === '')
            {
              alert('Adjon meg jelszót!');
              return;
            }

            const fromData = new FormData();
            fromData.append('usr', usr);
            fromData.append('pass', pass);
            fromData.append('login', 'true');

            fetch(window.location.href, 
            {
              method: 'POST',
              body: fromData
            })
            .then(response => response.json())
            .catch(error =>{
              console.error('Error:', error);
              alert('Hibás felhasználó vagy jelszó!');
            });
          })
      })
    </script>

    <?php
   
    if (isset($_POST['login'])) 
    {
      header('Content-Type: application/json');
      $usr = trim($_POST['usr'] ?? '');
      $pass = trim($_POST['pass'] ?? '');
      $response = ['success' => false];

      if($usr === '' && $pass === '')
      {
        echo json_encode($response);
        exit;
      }
      
      if($usr === '' && $pass === '')
      {
        $loginError = true;
      }

      //Ideiglenesen marad
      if($usr === 'lolcat')
      {
        $_SESSION['id'] = 0;
        $_SESSION['username'] = 'lolcat';
        header('Location: ./src/main.php');
        exit;
      }

      else 
      {
        
        $stmt = $conn->prepare("SELECT * FROM felhasznalo WHERE azonosito = :usr AND jelszo = :pass");
        $stmt->bindParam(':usr', $usr);
        $stmt->bindParam(':pass', $pass);
        $stmt->execute();
        $row = $stmt->fetch(PDO::FETCH_ASSOC);
        $usr = $stmt->fetch();
        
            
        if ($row) 
        {
          $_SESSION['id'] = $row['id'];
          $_SESSION['username'] = $row['azonosito'];
          $_SESSION['password'] = $row['jelszo'];
          $response['success'] = true;
          header('Location: ./src/main.php');
          exit;
        }
        else
        {
          $loginError = true;
        }
        echo json_encode($response);
        exit;
      }
    }
    ?>
    <?php ob_end_flush(); ?>

    
    
    
   



  </body>

</html>