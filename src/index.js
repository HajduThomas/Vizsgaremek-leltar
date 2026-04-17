const uri = window.location.href.substring(0, window.location.href.lastIndexOf('/'));
console.log(uri);
const center = $("#center");
var $error = null;

center.on('submit', function(event) {
    event.preventDefault()
    let loginData = {
        usr: $("#usr").val(),
        pass: $("#pass").val()
    }
    if (loginData.usr == '' || loginData.pass == '') {
      errorShow("Please enter a username and password.");
      return;
    }
    fetch(uri + "/src/login.php",{
        method: 'POST',
        body: JSON.stringify(loginData)
    })
    //TODO: Redo with proper .catch clause
    .then(response => response.json().then(data => ({status: response.status, data})))
    .then(result => {
        //console.log(result);
        if (result.status == 302) {
          window.location = uri + "/src/main.html";
        } else if (result.status == 401) {
          errorShow("User not found.");
        } else if (result.status == 500) {
          center.html("<h1>"+result.data+"</h1>");
        } else {
          center.html("<h1> Critical Error! </h1>");
        }
    })
});

$(document).on('DOMContentLoaded',function(){
    fetch(uri + "/src/login.php",{
        method: 'GET'
    })
    //TODO: Redo with proper .catch clause
    .then(response => response.json().then(data => ({status: response.status, data})))
    .then(result => {
        //console.log(result);
        if (result.status == 200) {
            buildLogin();
        } else if (result.status == 500) {
          center.html("<h1>"+result.data+"</h1>");
        } else {
          center.html("<h1> Critical Error! </h1>");
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
