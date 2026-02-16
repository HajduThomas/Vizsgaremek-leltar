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
        <div class="top">
          <div class="logo"></div>
        </div>

        <div class="container">
          <div id="categories" class="categories">
            <h2>Tables</h2>
            <!--Insert categories here-->
          </div>
        </div>

      </div>
      
      <div class="sideTab">
        <div class="tab"></div>
      </div>
    </div>

    <div class="mainpanel">
      <header>
        <div class="top">
          <div class="swidth ovr"></div>
          <h1 class="swidth catDisplay" id="category"></h1>
          <div class="swidth ovr">
            <div class="menu"></div>
          </div>
          
        </div>
        
        <div class="options">

          <div class="swidth ovr">
            <button class="bclr">1</button>
            <button class="bclr">2</button>
            <button class="bclr">3</button>
          </div>
          <input class="swidth bclr" type="text" placeholder="Search..." autocomplete="off">
          <div class="swidth ovr"></div>
        </div>

      </header>
      
      <div class="container">

        <table class="content" id="dataTable"><!--Insert table contents here--></table>

        <script>

        //TODO:
        //implement reading from sql
        //implement pagination
        //implement searching function
        //handle first time loading (display the first category as default)

        const dataTable = document.getElementById("dataTable");
        const catDisplay = document.getElementById("category");
        const categories = document.getElementById("categories");

        //This is only for testing
        //replace with sql
        const rows = 200;
        const cols = 7;

        const results = [
          {
            catName: "Music", //table name
            //table contents
            names: ["eye", "Exodus", "Faint", "Fired Up", "Hold The Night", "Divide My Heart", "How We Roll"],
            descs: ["Kanaria", "KoruSe", "Linking Park", "Foret de Vin", "NAOKI", "Hollywoord Undead"],
            durs: ["2:14", "3:04", "2:42", "3:26", "3:00", "5:23", "4:45"]
          },
          {
            catName: "More Music",
            names: ["Ghost Rule","Six Black Heavens Guns", "Lowrider", "Echo", "Maw of the King", "Devil Trigger", "Throne", "Kingslayer"],
            descs: ["Deco*27", "Daisuke Ishiwatari / Naoki Hashimoto", "Cypress Hill", "Crusher-p", "Cami-Cat", "Casey Edwards / Ali Edwards", "Bring Me The Horizon", "Bring Me The Horizon / BABYMETAL"],
            durs: ["3:30", "4:43", "4:36", "3:50", "3:41", "6:45", "3:11", "3:40"]
          },
          {
            catName: "Still Music",
            names: ["Nasty * Nasty * Spell", "God Only Knows", "Judgement", "KILLSWITCH", "Titanium", "WWW", "HUGE W", "Kinetic", "reason"],
            descs: ["Camellia", "bitbreaker", "meganeko", "mekaloton", "Mittsies", "Moe Shop / Edoga-Sullivan", "Mori Calliope", "Pete Cottrell", "Rad Cat"],
            durs: ["4:24", "4:47", "5:29", "2:15", "3:06", "3:30", "4:09", "3:49", "2:45"]
          },
          {
            catName: "yup, Music",
            names: ["Latin Lingo", "Purple Pills", "A Blast Beat", "Shield Sister", "Lagtrain", "Levitate", "MoeChakkaFire", "Methods of Madness", "Extras (city pop cover)"],
            descs: ["Cypress Hill", "D12", "Dune", "Garrett Williamson", "girl_dm_ / darkbluecat", "Hollywood Undead", "issey", "James Landino", "jen"],
            durs: ["3:58", "5:04", "3:05", "2:35", "4:11", "3:24", "2:35", "1:58", "6:07"]
          },
          //category capacity
          //{catName: "fill"},{catName: "fill"},{catName: "fill"},{catName: "fill"},{catName: "fill"},{catName: "fill"},{catName: "fill"},{catName: "fill"},{catName: "fill"},{catName: "fill"},{catName: "fill"},{catName: "fill"},{catName: "fill"},{catName: "fill"},{catName: "fill"},{catName: "fill"},{catName: "fill"},{catName: "fill"}
        ]

        function fillTable(id) {
          
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
        
        for (let i = 0; i < results.length; i++) {
          var catButton = document.createElement("a");
          catButton.className = "category bclr";
          catButton.innerText = results[i].catName;
          catButton.href = "#0";
          catButton.addEventListener("click", changeCat);
          catButton.cat = i;
          categories.appendChild(catButton);
        }
        catDisplay.innerText = results[0].catName;
        
      </script>

      </div>
      
    </div>
    
  </body>

</html>