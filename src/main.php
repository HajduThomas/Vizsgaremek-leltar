<!DOCTYPE html>
<html lang="hu">

  <head>
    
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link rel="stylesheet" href="./main.css">
      <link rel="icon" href="./assets/pixelcat.png">
      <!--seperated for easy removal-->
      <script src="main.js" defer></script>

      <title>Leltarozo</title>

  </head>

  <body>

    <div class="slider">
      <div class="sidepanel">
        <div class="top">
          <div id='menu' class="menu"></div>
        </div>

        <div class="categories">
          <h2>Tables</h2>
          <div id="categories" class="container">
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
          <h1 class="swidth catDisplay" id="category"></h1>
        </div>
      </header>
      <div id="options" class="options">
        <div class="swidth ovr">
          <!--Pagination-->
          <button class="bclr">1</button>
          <button class="bclr">2</button>
          <button class="bclr">3</button>
        </div>
        <input class="swidth bclr" type="text" placeholder="Search..." autocomplete="off">
        <div class="swidth ovr"></div>
      </div>
      <div class="container">
        <table id="dataTable" class="content"></table>
        <form id="menu2" class="menu2">
          <h2>hue</h2><input type="range" name="hue" id="hue" min="1" max="30" value="17" autocomplete="off">
        </form>
      </div>
      
    </div>
    
  </body>

</html>