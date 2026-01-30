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

        <div class="container">
          <a href="#" class="catButton"><div class="category">category 1</div></a>
          <a href="#" class="catButton"><div class="category">category 2</div></a>
          <a href="#" class="catButton"><div class="category">category 3</div></a>
        </div>

      </div>
      
      <div class="sideTab">
        <div class="tab"><img src="./assets/pixelcat.png" alt=">"></div>
      </div>
    </div>
    <div class="mainpanel">
      <div class="toppanel">

        <div class="header">
          <p id="category">Category</p>
        </div>
        
        <div class="footrow">
          <button class="tag2">Option 1</button>
          <button class="tag2">Option 2</button>
          <button class="tag2">Option 3</button>
          <input type="text" placeholder="Search..." autocomplete="off">
        </div>

      </div>
      
      <div class="container">

        <table class="content" id="dataTable">
          <tbody></tbody>
        </table>

        <script>

        //TODO:
        //implement reading from sql
        //implement pagination
        //implement searching function
        //handle first time loading (display the first category as default)

        const rows = 200;
        const cols = 7;

        const dataTable = document.getElementById("dataTable");

        //This is only for testing
        //replace with sql
        const results = {
          names: [
            ["eye", "Exodus", "Faint", "Fired Up", "Hold The Night", "Divide My Heart", "How We Roll"],
            ["Ghost Rule","Six Black Heavens Guns", "Lowrider", "Echo", "Maw of the King", "Devil Trigger", "Throne", "Kingslayer"],
            ["Nasty * Nasty * Spell", "God Only Knows", "Judgement", "KILLSWITCH", "Titanium", "WWW", "HUGE W", "Kinetic", "reason"]
          ],
          descs: [
            ["Kanaria", "KoruSe", "Linking Park", "Foret de Vin", "NAOKI", "Hollywoord Undead"],
            ["Deco*27", "Daisuke Ishiwatari / Naoki Hashimoto", "Cypress Hill", "Crusher-p", "Cami-Cat", "Casey Edwards / Ali Edwards", "Bring Me The Horizon", "Bring Me The Horizon / BABYMETAL"],
            ["Camellia", "bitbreaker / Kasane Teto", "meganeko", "mekaloton", "Mittsies", "Moe Shop / Edoga-Sullivan", "Mori Calliope", "Pete Cottrell", "Rad Cat"]
          ],
          durs: [
            ["2:14", "3:04", "2:42", "3:26", "3:00", "5:23", "4:45"],
            ["3:30", "4:43", "4:36", "3:50", "3:41", "6:45", "3:11", "3:40"],
            ["4:24", "4:47", "5:29", "2:15", "3:06", "3:30", "4:09", "3:49", "2:45"]
          ]
        }

        function fillTable(id) {
          
          var row;
          var col;
          var tbody = document.createElement("tbody")

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
                    console.log(id);
                    col.innerText = results.names[id][(i-1) % results.names[id].length];
                    break;
                  case 2:
                    col.innerText = results.descs[id][(i-1) % results.descs[id].length];
                    break;
                  case 3:
                    col.innerText = results.durs[id][(i-1) % results.durs[id].length];
                    break;
                  default:
                    col.innerText = i;
                    break;
                }
              }
              row.appendChild(col);
            }
            tbody.appendChild(row);
          }

          dataTable.replaceChildren(tbody);

        }

        fillTable(0);


        const catDisplay = document.getElementById("category");

        function changeCat(event) {
          var target = event.currentTarget;
          catDisplay.innerText = target.name;
          fillTable(target.id);
        }

        const categories = document.getElementsByClassName("catButton");

        const catNames = ["music","more music","still music"];
        
        for (let i = 0; i < categories.length; i++) {
          const element = categories[i];
          element.addEventListener("click", changeCat);
          element.name = catNames[i];
          element.firstChild.innerText = element.name;
          element.id = i;
        }

        catDisplay.innerText = catNames[0];
        
      </script>

      </div>
      
    </div>
    
  </body>

</html>