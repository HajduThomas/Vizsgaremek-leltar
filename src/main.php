<!DOCTYPE html>
<html lang="hu">

  <head>
    
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link rel="stylesheet" href="./main.css">
      <link rel="icon" href="./assets/pixelcat.png">

      <title>Leltarozo</title>

  </head>

  <body>

  <?php
  try {
    $db = new PDO(
        "mysql:host=localhost;dbname=leltar;charset=utf8",
        "root",
        ""
    );
    $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $error) {
    echo "<p>Adatbázis hiba: {$error->getMessage()}</p>";
    die();
}

$categories = [
  "mirelit" => "Mirelit",
  "szarazaruk" => "Szárazáruk",
  "tejtermek" => "Tejtermék",
  "vegyiaruk" => "Vegyiáruk"
];

$currentCategory = $_GET["cat"] ?? "mirelit";

if (!array_key_exists($currentCategory, $categories)) {
  $currentCategory = "mirelit";
}

$search = $_GET["search"] ?? "";

if ($search !== ""){
  $stmt = $db->prepare("
  SELECT * FROM `$currentCategory`
  WHERE nev LIKE :search OR tomegfajta LIKE :search
  ");
  $stmt->execute([
    ":search" => "%$search%"
  ]);
} else {
  $stmt = $db->prepare("SELECT * FROM `$currentCategory`");
  $stmt->execute();
}

$data = $stmt->fetchAll(PDO::FETCH_ASSOC);


?>
  
    <div class="slider">
      <div class="sidepanel">
        <div class="toppanel">

          <div class="header">
            <img src="./assets/pixelcat.png" alt="pixelcat">
          </div>
          
          <div class="footrow">
            <button class="tag1"><img src="./assets/pixelcat.png" alt="1"></button>
            <button class="tag1"><img src="./assets/pixelcat.png" alt="1"></button>
            <button class="tag1"><img src="./assets/pixelcat.png" alt="1"></button>
            <button class="tag1"><img src="./assets/pixelcat.png" alt="1"></button>
            <button class="tag1"><img src="./assets/pixelcat.png" alt="1"></button>
          </div>

        </div>

        <div id="catSelect" class="container">
          <?php
          foreach($categories as $key => $value){
            echo "<a href='?cat=$key'><div class='category'>$value</div></a>";
          }
          ?>
        </div>

      </div>
      
      <div class="sideTab">
        <div class="tab"><img src="./assets/pixelcat.png" alt=">"></div>
      </div>
    </div>
    <div class="mainpanel">
      <div class="toppanel">

        <div class="header">
          <p id="category"><?= $categories[$currentCategory] ?></p>
        </div>
        
        <div class="footrow">
          <button class="tag2">Option 1</button>
          <button class="tag2">Option 2</button>
          <button class="tag2">Option 3</button>

          <form method="GET" style="display:inline;">
              <input type="hidden" name="cat" value="<?= $currentCategory ?>">

            <input
              type="text"
              name="search"
              placeholder="Search..."
              autocomplete="off"
              value="<?= htmlspecialchars($search) ?>"
            >
          </form>
        </div>

      </div>
      
      <div class="container">

        <table class="content" id="dataTable">
          <thead>
            <tr>
              <th>ID</th>
              <th>Név</th>
              <th>Tömeg</th>
              <th>Tömegfajta</th>
              <th>Darabszám</th>
            </tr>
          </thead>
          <tbody>
          <?php
          foreach ($data as $row){
            echo "<tr><td>{$row['id']}</td><td>{$row['nev']}</td><td>{$row['tomeg']}</td><td>{$row['tomegfajta']}</td><td>{$row['darabszam']}</td></tr>";
          }
          ?>
          </tbody>
        </table>

        
        <script>
        /*
        //TODO:
        //implement reading from sql
        //implement pagination
        //implement searching function
        //handle first time loading (display the first category as default)

        const dataTable = document.getElementById("dataTable");
        const catDisplay = document.getElementById("category");
        const catSelect = document.getElementById("catSelect");


        //This is only for testing
        //replace with sql
        const rows = 200;
        const cols = 7;


        const results = [
          {
            catName: "music", //table name
            //table contents
            names: ["eye", "Exodus", "Faint", "Fired Up", "Hold The Night", "Divide My Heart", "How We Roll"],
            descs: ["Kanaria", "KoruSe", "Linking Park", "Foret de Vin", "NAOKI", "Hollywoord Undead"],
            durs: ["2:14", "3:04", "2:42", "3:26", "3:00", "5:23", "4:45"]
          },
          {
            catName: "more music",
            names: ["Ghost Rule","Six Black Heavens Guns", "Lowrider", "Echo", "Maw of the King", "Devil Trigger", "Throne", "Kingslayer"],
            descs: ["Deco*27", "Daisuke Ishiwatari / Naoki Hashimoto", "Cypress Hill", "Crusher-p", "Cami-Cat", "Casey Edwards / Ali Edwards", "Bring Me The Horizon", "Bring Me The Horizon / BABYMETAL"],
            durs: ["3:30", "4:43", "4:36", "3:50", "3:41", "6:45", "3:11", "3:40"]
          },
          {
            catName: "still music",
            names: ["Nasty * Nasty * Spell", "God Only Knows", "Judgement", "KILLSWITCH", "Titanium", "WWW", "HUGE W", "Kinetic", "reason"],
            descs: ["Camellia", "bitbreaker", "meganeko", "mekaloton", "Mittsies", "Moe Shop / Edoga-Sullivan", "Mori Calliope", "Pete Cottrell", "Rad Cat"],
            durs: ["4:24", "4:47", "5:29", "2:15", "3:06", "3:30", "4:09", "3:49", "2:45"]
          },
          {
            catName: "yup, music",
            names: ["Latin Lingo", "Purple Pills", "A Blast Beat", "Shield Sister", "Lagtrain", "Levitate", "MoeChakkaFire", "Methods of Madness", "Extras (city pop cover)"],
            descs: ["Cypress Hill", "D12", "Dune", "Garrett Williamson", "girl_dm_ / darkbluecat", "Hollywood Undead", "issey", "James Landino", "jen"],
            durs: ["3:58", "5:04", "3:05", "2:35", "4:11", "3:24", "2:35", "1:58", "6:07"]
          }
        ]

        <script>
        function fil  lTable(id) {
          
          var row;
          var col;
          var tbody = document.createElement("tbody")

          catDisplay.innerText = results[id].catName;

          for (let i = 0; i <= rows; i++) {
            row = document.createElement("tr");
            for (let o = 0; o < cols; o++) {
              col = document.createElement( ((i == 0) ? "th" : "td"));
              if (i == 0) {
                switch (o) {
                  case 0:
                    col.innerText = "id";
                    break;
                  case 1:
                    col.innerText = "Name";
                    break;
                  case 2:
                    col.innerText = "Description";
                    break;
                  case 3:
                    col.innerText = "Duration";
                    break;
                  default:
                    col.innerText = "Extra";
                    break;
                }
              } else {
                switch (o) {
                  case 0:
                    col.innerText = i;
                    break;
                  case 1:
                    col.innerText = results[id].names[(i-1) % results[id].names.length];
                    break;
                  case 2:
                    col.innerText = results[id].descs[(i-1) % results[id].descs.length];
                    break;
                  case 3:
                    col.innerText = results[id].durs[(i-1) % results[id].durs.length];
                    break;
                  default:
                    col.innerText = i;
                    break;
                }
              }
              row.appendChild(col);
              row.id = i;
            }
            tbody.appendChild(row);
          }

          dataTable.replaceChildren(tbody);

        }

        fillTable(0);

        //I don't know how else to do this ;-;
        function changeCat(event) {
          var target = event.currentTarget;
          fillTable(target.cat);
        }
        
        //
        for (let i = 0; i < results.length; i++) {
          ---------
          //alt, might use
          var catButton = document.createElement("button");
          catButton.className = "category";
          catButton.addEventListener("click", changeCat);
          catButton.innerText = results[i].catName;
          catButton.id = i;
          ---------
          var catButton = document.createElement("a");
          var catDiv = document.createElement("div");
          catDiv.className = "category";
          catDiv.innerText = results[i].catName;
          catButton.appendChild(catDiv);
          catButton.href = "#0";
          catButton.addEventListener("click", changeCat);
          catButton.cat = i;

          catSelect.appendChild(catButton);
        }

        catDisplay.innerText = results[0].catName;
        */
      </script>

      </div>
      
    </div>
    
  </body>

</html>