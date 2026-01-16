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
      <link rel="stylesheet" href="src/style.css">

      <title>Leltarozo</title>

  </head>

  <body>
    <div id="login-form" <?=isActive('login', $activeform);?>>
        <form action="" method="post">
            <h1>Bejelentkezés</h1>
            <?=showError($errors['azonosito'])   ?>
            <input type="text" name="name" placeholder="Azonosító" required>
            <input type="password" name="password" placeholder="Jelszó" required>
            <button type="submit" name="login">Belépés</button>
        </form>
    </div>
  </body>

</html>