const uri = window.location.href + '/src/login.php';
const center = document.getElementById("center");
var $error = null;

center.addEventListener('submit', function(event) {
    event.preventDefault()
    const loginData = {
        usr: document.getElementById("usr").value,
        pass: document.getElementById("pass").value
    }
    if (loginData.usr == '' || loginData.pass == '') {
      errorShow("Please enter a username and password.");
      return;
    }
    fetch(uri,{
        method: 'POST',
        headers: {'Content-type': 'application/json'},
        body: JSON.stringify(loginData)
    })
    .then(response => response.json().then(data => ({status: response.status, data})))
    .then(result => {
        console.log(result);
        if (result.status == 200) {
          window.location = window.location.href + "src/main.html";
        } else if (result.status == 404) {
          errorShow("User not found.");
        } else {
            center.innerHTML = "<h2>"+result.data+"</h2>";
          }
    })
});

document.addEventListener('DOMContentLoaded',function(){
    // console.log('Helló');
    fetch(uri,{
        method: 'GET'
    })
    .then(response => response.json().then(data => ({status: response.status, data})))
    .then(result => {
        //console.log(result);
        if (result.status == 200) {
            //console.log("work");
            buildLogin();
        } else {
            center.innerHTML = "<h2>"+result.data+"</h2>";
        }
    })
})

function buildLogin() {
    $title = $("<h2>", {"class": "fCtr" ,text: "Login"});
    $usrIn = $("<div>", {"class": "inrow"});
      $lusr = $("<label>", {"for": "usr", text: "Username:"});
      $iusr = $("<input>", {"id": "usr","class": "sclr", "type": "text", "placeholder": "username..."});
    $usrIn.append($lusr, $iusr);
    $passIn = $("<div>", {"class": "inrow"});
      $lpass = $("<label>", {"for": "pass", text: "Password:"});
      $ipass = $("<input>", {"id": "pass", "class": "sclr", "type": "password", "placeholder": "password..."});
    $passIn.append($lpass, $ipass);
    $submit = $("<input>", {"class": "bclr", "type": "submit", "value": "Login"});
    $error = $("<label>", {"id": "error", "class": "error"}).hide();
    $(center).empty();
    $(center).append($title, $usrIn, $passIn, $error, $submit);
}

function errorShow($msg) {
  if ($error != null) {
    $error.text($msg);
    $error.show();
  }
}

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
