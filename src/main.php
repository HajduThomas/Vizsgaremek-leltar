<?php
//Get the database info before anything, doesn't continue if this fails
require 'dbcon.php';

//if the method is POST, do this
//method defined in dbcon.php
if ($method == "POST") {
  //Decode given json data from fetch body?
  //See file get contents: https://www.php.net/manual/en/function.file-get-contents.php
  //See "php://input": https://www.php.net/manual/en/wrappers.php.php
  $catData = json_decode(file_get_contents("php://input"), true);
  //Get given variables from body
  $currentCategory = $catData["cat"];
  $search = $catData["search"];
  //This is what yall need to do.
  try {
    //Do this if search is given (not empty or null)
    //fun fact: 0 == "", so use ===
    if ($search !== "" && $search !== null){
      $stmt = $conn->query("SELECT column_name from information_schema.columns where table_schema = '$dbname' and table_name = '$currentCategory'");
      $cols = $stmt->fetchAll(PDO::FETCH_ASSOC);
      $count = 0;
      $sql = "SELECT * FROM $currentCategory";
      foreach ($cols as $key => $value) {
        if ($count == 0) $sql .= " WHERE";
        else $sql .= " OR";
        $count++;
        $sql .= " ".$value['column_name']." LIKE :search";
      }
      $stmt = $conn->prepare($sql);
      $stmt->bindValue(':search', '%'.$search.'%');
      $stmt->execute();
      $data = $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
    //Do this if no seach is given
    else {
      //Get everything from table
      //Fun fact: this is NOT SAFE or LEGAL by sql standards, MAKE SURE TO CHECK INPUT BEFORE PHP REQUEST!!!
      $stmt = $conn->query("SELECT * FROM $currentCategory");
      //Get all rows form table and store in $data
      $data = $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
    //Return with stored data from database
    //Response is defined in dbcon.php
    response($data);

  } catch (PDOException $e){
    //If something went wrong, return this string with and error code
    response("Adatbázis hiba:\n".$e->getMessage(), 500);
  }
}
//If method POST wasn't gived, for some reason, return with bad request.
//See https://www.php.net/manual/en/wrappers.php.php for info about request codes.
response("", 400);

?>