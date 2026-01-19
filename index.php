<?php
session_start();
$errors = [
    'azonosito' => $_SESSION['name_error'] ?? ''
];
$activeform = $_SESSION ['active_from'] ?? 'login';
session_unset();
function showError($error)
{
    return !empty($error) ? "<p class='error-message'>$error</p>" : '';
}

function isActive($forName, $activeform)
{
    return $forName === $activeform ? 'aktív' : '';
}
?>


<!DOCTYPE html>
<html lang="en">

  <head>
    
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link rel="stylesheet" href="./src/index.css">
      <link rel="icon" href="./src/assets/pixelcat.png">

      <title>Login</title>

  </head>

  <body>
    
    <div class="background"></div>
    
    <div class="center">
      <form action="./src/main.php">
        <h1>Login</h1><br>
        <label for="usr">Username:</label>
        <input type="text" name="usr" id="usr"><br><br>
        <label for="pass">Password:</label>
        <input type="text" name="pass" id="pass"><br><br>
        <button type="submit">Login</button>
      </form>
    </div>

  </body>

</html>