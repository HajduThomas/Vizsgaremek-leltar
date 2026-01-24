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

    <div class="sidepanel">
        <h2>sidepanel</h2>
        <p>This is the side panel</p>
    </div>
    <div class="mainpanel">
      <div class="toppanel">
        <div class="category">
          <p id="category">Category</p>
        </div>
        
        <div class="options">
          <button>Option 1</button>
          <button>Option 2</button>
          <button>Option 3</button>
        </div>

      </div>
      <div class="container">

        <table class="content">
          <tbody id="dataTable">
          </tbody>
        </table>

        <script>
          //filling datatable for testing
          //
          //if there are a lot of rows, it lags, need to implement "pagination"
          //basically sectioning the list into parts, like every 200/300 rows
          //also need an option to choose pagination size
          //
          //Need to make the writeout a function so searching doesnt result in
          // a bunch of paginated results
          const rows = 200;
          const cols = 9;
          const dataTable = document.getElementById("dataTable");

          const names = ["eye", "Exodus", "Faint", "Fired Up", "Hold The Night", "Divide My Heart", "How We Roll"];
          const descs = ["Kanaria", "KoruSe", "Linking Park", "Foret de Vin", "NAOKI", "Hollywoord Undead"];
          const durs = ["2:14", "3:04", "2:42", "3:26", "3:00", "5:23", "4:45"]

          var row;
          var col;
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
                    col.innerText = names[i % 7];
                    break;
                  case 2:
                    col.innerText = descs[i % 7];
                    break;
                  case 3:
                    col.innerText = durs[i % 7];
                    break;
                  default:
                    col.innerText = i;
                    break;
                }
              }
              if (i % 2 === 0) {
                row.className = "darker";
              }
              row.appendChild(col);
            }
            dataTable.appendChild(row);
          }
        </script>

      </div>
      
    </div>
    
  </body>

</html>