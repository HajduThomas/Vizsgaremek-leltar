const catDisplay = document.getElementById("category");
const categories = document.getElementById("categories");
const options = document.getElementById("options");
const menu2 = document.getElementById("menu2");
const dataTable = document.getElementById("dataTable");

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
    {catName: "fill"},{catName: "fill"},{catName: "fill"},{catName: "fill"},{catName: "fill"},{catName: "fill"},{catName: "fill"},{catName: "fill"},{catName: "fill"},{catName: "fill"},{catName: "fill"},{catName: "fill"},{catName: "fill"},{catName: "fill"},{catName: "fill"},{catName: "fill"},{catName: "fill"},{catName: "fill"}
]

function fillTable(id) {

    if (id === 'menu') {
            
        catDisplay.innerText = 'Options';

        options.style.display = "none";
        dataTable.style.display = "none";
        menu2.style.display = "flex";

        var menu = document.createElement('div');
        menu.className = 'menu2';

    } else {
          
        var row;
        var col;
        var tbody = document.createElement("tbody");
        var table = document.createElement("table");

        catDisplay.innerText = results[id].catName;

        options.style.display = "flex";
        dataTable.style.display = "table";
        menu2.style.display = "none";

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
                            col.innerText = (results[id].catName == "fill") ? "This is filler" : results[id].names[(i-1) % results[id].names.length];
                            break;
                        case 2:
                            col.innerText = (results[id].catName == "fill") ? "Testing sizes" : results[id].descs[(i-1) % results[id].descs.length];
                            break;
                        case 3:
                            col.innerText = (results[id].catName == "fill") ? "DON'T LOOK DON'T LOOK DON'T LOOK DON'T LOOK DON'T LOOK DON'T LOOK" : results[id].durs[(i-1) % results[id].durs.length];
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

        table.appendChild(tbody);
        table.className = "content";
        dataTable.replaceChildren(table);
    }
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

var menu = document.getElementById("menu");
menu.cat = 'menu';
menu.addEventListener('click', changeCat);

document.getElementById("hue").oninput = function () {
    document.documentElement.style.setProperty("--main-hue", this.value * 12);
}
