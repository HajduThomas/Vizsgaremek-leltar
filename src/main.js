//Setting uri for use when fetching from php
//Substring needed for compatibility with linux and xampp testing
const uri = window.location.href.substring(0, window.location.href.lastIndexOf('/')) + "/main.php";
//console.log(uri); //For testing
//Put often used elements in variables for ease of use
const $catDisplay = $("#category");
const $options = $("#options");
const $menu2 = $("#menu2");
const $dataTable = $("#dataTable");

//jquery etiquette:
// dollar sign ($) before objects, like elements ($('#h1')) 
// don't use $ for simple variables numbers/strings

//Define how many rows and columns to mimic using results json
const rows = 200;
const cols = 7;

//Results json for mimicing sql table contents, used for testing without sql
$results = [
  {
    catName: "Music", //table name
    //table contents
    names: ["eye", "Exodus", "Faint", "Fired Up", "Hold The Night", "Divide My Heart", "How We Roll"],
    descs: ["Kanaria", "KoruSe", "Linking Park", "Foret de Vin", "NAOKI", "Hollywoord Undead"],
    durs: ["2:14", "3:04", "2:42", "3:26", "3:00", "5:23", "4:45"]
  },
  {
    catName: "More Music",
    names: ["Ghost Rule", "Six Black Heavens Guns", "Lowrider", "Echo", "Maw of the King", "Devil Trigger", "Throne", "Kingslayer"],
    descs: ["Deco*27", "Daisuke Ishiwatari / Naoki Hashimoto", "Cypress Hill", "Crusher-p", "Cami-Cat", "Casey Edwards / Ali Edwards", "Bring Me The Horizon", "Bring Me The Horizon / BABYMETAL"],
    durs: ["3:30", "4:43", "4:36", "3:50", "3:41", "6:45", "3:11", "3:40"]
  },
  {
    catName: "Size Test",
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
  //category capacity test
  //{ catName: "fill" }, { catName: "fill" }, { catName: "fill" }, { catName: "fill" }, { catName: "fill" }, { catName: "fill" }, { catName: "fill" }, { catName: "fill" }, { catName: "fill" }, { catName: "fill" }, { catName: "fill" }, { catName: "fill" }, { catName: "fill" }, { catName: "fill" }, { catName: "fill" }, { catName: "fill" }, { catName: "fill" }, { catName: "fill" }
];

//Category changing method, needs category index for use
//category index == results index
function fillTable(id) {

  //Check if given variable is menu
  //If so, display the menu screen
  if (id === 'menu') {

    //Change top name to options
    $catDisplay.text('Options');
    //hide table and top row show options
    $options.hide();
    $dataTable.hide();
    $menu2.show();

  }
  //If we don't wanna check the menu, do this
  else {

    //Change top name to the indexed table name
    $catDisplay.text($results[id].catName);
    //Make sure the table shows, in case we are switching from menu
    $options.show();
    $dataTable.show();
    $menu2.hide();

    //Define variable for later
    let $row, $col, $drag;
    //Define empty tbody for use
    let $tbody = $("<tbody>");
    //For every row, loop this
    for (let i = 0; i <= rows; i++) {
      //Create current row
      $row = $("<tr>");
      //for every column, loop this
      //row and column defined above, see comments there
      for (let o = 0; o < cols; o++) {
        //if this is the first row, use table head (th for short), else use table data/cell (td for short)
        $col = $("<" + ((i == 0) ? "th" : "td") + ">");
        //if this is the first row, use these names for header names
        if (i == 0) {
          //not explaning this, just complex prenamed garbage
          switch (o) {
            case 0:
              $col.text("id");
              break;
            case 1:
              $col.text("Name");
              break;
            case 2:
              $col.text("Description");
              break;
            case 3:
              $col.text("Duration");
              break;
              default:
                $col.text("Extra");
                break;
            }
            //clear resize width on double click
            $($col).on('dblclick', function (e) {
              $(e.target).removeAttr('style');
            });
            //create draggable span element for resizing, with function on dragging/being actively clicked
          $drag = $("<span>", { 'class': 'resize-handle' }).mousedown(colMoveInit);
          //Add to end of cell
          $col.append($drag);
        }
        //If it's not the first row, do this
        else {
          //switch case because of the fill thing, otherwise just cycle through the result json for the elements name
          //also add title for showing full text on hover
          switch (o) {
            case 0:
              $col.text(i).prop("title", i);
              break;
            case 1:
              $col.text(($results[id].catName == "fill") ? "This is filler" : $results[id].names[(i - 1) % $results[id].names.length]).prop("title", ($results[id].catName == "fill") ? "This is filler" : $results[id].names[(i - 1) % $results[id].names.length]);
              break;
            case 2:
              $col.text(($results[id].catName == "fill") ? "Testingsizeswwwwwwwwwwwwww" : $results[id].descs[(i - 1) % $results[id].descs.length]).prop("title", ($results[id].catName == "fill") ? "Testingsizeswwwwwwwwwwwwww" : $results[id].descs[(i - 1) % $results[id].descs.length]);
              break;
            case 3:
              $col.text(($results[id].catName == "fill") ? "DON'T LOOK DON'T LOOK DON'T LOOK DON'T LOOK DON'T LOOK DON'T LOOK" : $results[id].durs[(i - 1) % $results[id].durs.length]).prop("title", ($results[id].catName == "fill") ? "DON'T LOOK DON'T LOOK DON'T LOOK DON'T LOOK DON'T LOOK DON'T LOOK" : $results[id].durs[(i - 1) % $results[id].durs.length]);
              break;
            default:
              $col.text(i).prop("title", i);
              break;
          }
        }
        //add cell to row
        $row.append($col);
      }
      //add row to body
      $tbody.append($row);
    }
    //add full body to new table with class dTable and id dTable
    let $table = $("<table>", { 'class': 'dTable', 'id': 'dTable' }).append($tbody);
    //Replace old table with new one, and scroll to the top
    $dataTable.html($table).scrollTop(0);
  }
}


// Some code "borrowed" from Webdevtrick ( https://webdevtrick.com/resizable-table-columns/ )
// Please don't shoot be for this, others in my class only use AI code, just let me have this.
//I'm not gonna explain this, just don't touch it.

var $colResizeTarget;

const colMove = e => requestAnimationFrame(() => {
  horizontalScrollOffset = dataTable.scrollLeft;
  const width = horizontalScrollOffset + e.clientX - $colResizeTarget.offsetLeft;
  //console.log("MainScrollOffset:" + horizontalScrollOffset + "\nClientX (mouse posX):" + e.clientX + "\nTargetOffset (?):" + $colResizeTarget.offsetLeft);
  //console.log("Dragged column size:" + $colResizeTarget.clientWidth);
  $($colResizeTarget).attr('style', "width: " + width + "px");
});

const colMoveStop = () => {
  window.removeEventListener('mousemove', colMove);
  window.removeEventListener('mouseup', colMoveStop);
};

const colMoveInit = ({ target }) => {
  $colResizeTarget = target.parentNode;
  window.addEventListener('mousemove', colMove);
  window.addEventListener('mouseup', colMoveStop);
};

//End of "borrowed" code

fillTable(0); //Run table fill on startup, using the first table

//I don't know how else to do this ;-;
//Getting target category seperatly because reasons
function changeCat(event) {
  var target = event.currentTarget;
  fillTable(target.cat);
}

//json array of objects for defining table names,
//TODO: make this automatic
$categories = [
  //Store sql name for requests, store display name for pretty display
  //TODO: Allow changing of display name
  {sql: "showcase",
    display: "Showcase"},
  {sql: "sizetest",
    display: "Size Test"},
  {sql: "music",
    display: "Music"},
  {sql: "vegyiaruk",
    display: "Vegyiaruk"},
  {sql: "tejtermek",
    display: "Tejtermekek"},
  {sql: "szarazaruk",
    display: "Szarazaruk"},
  {sql: "mirelit",
    display: "Mirelit Aru"}
];

//Run for every category for sql tables and every category in results json
for (let i = 0; i < ($results.length + $categories.length); i++) {
  //Create link button
  var catButton = $("<a>", { 'class': 'category bclr' })
  //The first half of the fors total lenght it for the results json, so check if the index is lower then the jsons lenght
  if (i < $results.length) {
    //Add index for changing category as propery "cat" (short for category)
    catButton.prop('cat', i)
      //Set name from results
      .text($results[i].catName)
      //Add click event for chaning categories
      .click(changeCat);
  }
  //If the loop is past the results lenght, then time for the categories
  //This is complex and will propable be removed later
  else {
    //Define o for correct indexing of the categories array
    let o = i - $results.length;
    //Add sql name to element as property "cat"
    catButton.prop('cat', $categories[o].sql)
      //Set text as the display text
      .text($categories[o].display)
      //Add click event for changing categories
      .click(GetSQL);
  }
  //Add to categories list
  $("#categories").append(catButton);
}

//SQL reading

function GetSQL(event) {
  event.preventDefault() //event preventDefault
  //putting the selected categories name and the search query into one object
  let catData = {
      cat: event.currentTarget.cat, //Get selected category, store as cat (short for category)
      search: "" //Get the search query, currently under developement
  }
  //console.log(catData.cat); //For testing
  //fetch api, trying to fetch data from the uri
  fetch(uri,{
      method: 'POST', //using post method, to give and get data
      body: JSON.stringify(catData) //Encodes the "catData" object into json for sending to php
  })
  //When the php ends, get the response json and decode it for use into result.
  //The extra bit puts the http status into a status object for use later.
  .then(response => response.json().then(data => ({status: response.status, data}))) //This part is complex even for me, I'll look into it later
  //result = response json turned into object for use.
  .then(result => {

    //Variables for later use
    let $row, $col, $drag;
    //Create empty table body (tbody for short) to put the new table elements into
    let $tbody = $("<tbody>");

    //Setting column names
    //Creating new table row (tr for short)
    $row = $("<tr>");
    //https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/keys
    //basically turns object into array with usable key, see above for more info
    //foreach loops for every keyed element, see "mdn foreach"
    //using the first row, but it doesn't matter, because the key is same for all of the cells
    Object.keys(result.data[0]).forEach(key=>{
      //console.log(key); //For testing
      //Create table data/cell (td for short), with the name of the current column (key)
      $col = $("<th>").text(key);
      //Create spanning element with resize class, for resizing the columns
      $drag = $("<span>", { 'class': 'resize-handle' });
      //Add function when dragged/mouse is actively clicked
      $drag.mousedown(colMoveInit);
      //Add to current cell
      $col.append($drag);
      //On double click, reset the resized width
      $($col).on('dblclick', function (e) {
        $(e.target).removeAttr('style');
      });
      //Add cell to current row
      $row.append($col);
    });
    //Add top row to body
    $tbody.append($row);
    
    //fill table
    //console.log(result.data); //For testing
    //Run this for every given row from given data
    result.data.forEach(row => {
      //Same as before
      $row = $("<tr>");
      //Same as before
      Object.keys(row).forEach(key=>{
        //console.log(row[key]); //For testing
        //Same, except add extra title property for showing full element name on mouse hover
        $col = $("<td>").text(row[key]).prop("title", row[key]);
        //Same
        $row.append($col);
      });
      //Same
      $tbody.append($row);
    });
    //Create a table with class "dTable" and id "dTable", then add the body to it
    let $table = $("<table>", { 'class': 'dTable', 'id': 'dTable' }).append($tbody);
    //Replace old table with the new requested one, and scroll to the top.
    $dataTable.html($table).scrollTop(0);
  });
};

//Options
//Work In Progress (W.I.P. for short)

$("#menu").prop('cat', 'menu')
  .click(changeCat);

$("#tab").click( () => {
  $(".slider").addClass("sdrActive");
  $(".cover").show().click(rmvCvr);
  $(".category, #menu").click(rmvCvr);
});

const rmvCvr = () => {
  $(".slider").removeClass("sdrActive");
  $(".cover").hide();
}

$(".cover").hide();

//Options after here (preferably)
//set defaults and localstorage

var hue = 206;
var theme = "light";

if (localStorage.getItem('hue') != null) hue = localStorage.getItem('hue');
else localStorage.setItem('hue', hue);

const lightTheme = window.matchMedia('(prefers-color-scheme: dark)');
if (localStorage.getItem('theme') != null) theme = localStorage.getItem('theme');
else {
  if (!window.matchMedia) {
  } else if (lightTheme.matches) {
    theme = "dark";
  }
  localStorage.setItem('theme', theme);
}

$(':root').attr('data-theme', theme);
$(':root').css('--clr-hue', hue);
$('#hue').attr('value', hue);

//buttons

$("#hue").on('input', function () {
  $(':root').css('--clr-hue', this.value);
  localStorage.setItem('hue', this.value);
});

$('#themeL').click( () => {
  $(':root').attr('data-theme', 'light');
  localStorage.setItem('theme', 'light');
});
$('#themeD').click( () =>  {
  $(':root').attr('data-theme', 'dark');
  localStorage.setItem('theme', 'dark');
});
$('#themeA').click( () => {
  $(':root').attr('data-theme', 'amoled');
  localStorage.setItem('theme', 'amoled');
});

