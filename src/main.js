const $catDisplay = $("#category");
const $options = $("#options");
const $menu2 = $("#menu2");
const $dataTable = $("#dataTable");

//jquery etiquette:
// dollar sign ($) before objects, like elements ($('#h1')) 
// don't use $ for simple numbers/strings

//This is only for testing
//replace with sql
const rows = 200;
const cols = 7;

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
  //category capacity test
  { catName: "fill" }, { catName: "fill" }, { catName: "fill" }, { catName: "fill" }, { catName: "fill" }, { catName: "fill" }, { catName: "fill" }, { catName: "fill" }, { catName: "fill" }, { catName: "fill" }, { catName: "fill" }, { catName: "fill" }, { catName: "fill" }, { catName: "fill" }, { catName: "fill" }, { catName: "fill" }, { catName: "fill" }, { catName: "fill" }
];


function fillTable(id) {

  if (id === 'menu') {

    $catDisplay.text('Options');
    $options.hide();
    $dataTable.hide();
    $menu2.show();

  } else {


    $catDisplay.text($results[id].catName);
    $options.show();
    $dataTable.show();
    $menu2.hide();

    let $row, $col, $drag;
    let $tbody = $("<tbody>");
    for (let i = 0; i <= rows; i++) {
      $row = $("<tr>");
      for (let o = 0; o < cols; o++) {
        $col = $("<" + ((i == 0) ? "th" : "td") + ">");
        if (i == 0) {
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
          $($col).on('dblclick', function (e) {
            $(e.target).removeAttr('style');
          });
          if (o != cols - 1) {
            $drag = $("<span>", { 'class': 'resize-handle' });
            $drag.mousedown(colMoveInit);
            $col.append($drag);
          }
        } else {
          switch (o) {
            case 0:
              $col.text(i);
              break;
            case 1:
              $col.text(($results[id].catName == "fill") ? "This is filler" : $results[id].names[(i - 1) % $results[id].names.length]);
              break;
            case 2:
              $col.text(($results[id].catName == "fill") ? "Testingsizeswwwwwwwwwwwwww" : $results[id].descs[(i - 1) % $results[id].descs.length]);
              break;
            case 3:
              $col.text(($results[id].catName == "fill") ? "DON'T LOOK DON'T LOOK DON'T LOOK DON'T LOOK DON'T LOOK DON'T LOOK" : $results[id].durs[(i - 1) % $results[id].durs.length]);
              break;
            default:
              $col.text(i);
              break;
          }
        }
        $row.append($col);
      }
      if (i == 0) $row.attr('id', i);
      $tbody.append($row);
    }

    let $table = $("<table>", { 'class': 'dTable', 'id': 'dTable' }).append($tbody);
    $dataTable.html($table);
  }
}


// Some code "borrowed" from Webdevtrick ( https://webdevtrick.com/resizable-table-columns/ )
// Please don't shoot be for this, others in my class only use AI code, just let me have this.

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

fillTable(0);

//I don't know how else to do this ;-;
function changeCat(event) {
  var target = event.currentTarget;
  fillTable(target.cat);
}


for (let i = 0; i < $results.length; i++) {
  var catButton = $("<a>", { 'class': 'category bclr', 'href': '#0' })
    .prop('cat', i)
    .text($results[i].catName)
    .click(changeCat);
  $("#categories").append(catButton);
}

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

$("#hue").on('input', function () {
  $(':root').css('--clr-hue', this.value);
});
