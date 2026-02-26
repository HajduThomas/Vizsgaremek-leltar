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
          <a id='menu' class="menu">
            <img src="./assets/blbox.png" class="logo"></img>
          </a>
        </div>
        <div class='sum'>
            
          <h2 class='catTop'>Tables</h2>
          <div id="categories" class="container catCont">
            <!--Categories go here-->
          </div>
        </div>

      </div>
      
      <div class="sideTab">
        <div class="tab"></div>
      </div>
    </div>

    <div class="mainpanel">
      <div class="top">
        <h1 class="swidth catDisplay" id="category"></h1>
      </div>
      
      <div class="sum sumMain">
        <div id="options" class="options">
          <div class="swidth ovr">
            <!--1:1 to google mail lol-->
            <button class="bclr">[ ]</button>
            <button class="bclr">G</button>
            <button class="bclr">:</button>
          </div>
          <input class="swidth sclr" type="text" placeholder="Search..." autocomplete="off">
          <div class="swidth ovr">
            <!--Pagination-->
            <button id='prew' class="bclr"><</button>
            <!--Need to fix this-->
            <button id='curPg' class="bclr">2</button>
            <button id='next' class="bclr">></button>
          </div>
        </div>
        <div id="dataTable" class="container mainCont"></div>
        <form id="menu2" class="menu2">
          <h2>hue</h2><input type="range" name="hue" id="hue" min="1" max="30" value="17" autocomplete="off">
        </form>
      </div>
      
    </div>
    
  </body>

</html>