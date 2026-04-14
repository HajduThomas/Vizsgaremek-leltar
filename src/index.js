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
    const $title = $("<h1>", {text: "Login"});
    const $lusr = $("<label>", {"for": "usr", text: "Username:"});
    const $iusr = $("<input>", {"type": "text", "id": "usr", "placeholder": "username..."});
    const $lpass = $("<label>", {"for": "pass", text: "Password:"});
    const $ipass = $("<input>", {"type": "password","id": "pass", "placeholder": "password..."});
    const $submit = $("<input>", {"type": "submit", "value": "Login"});
    $error = $("<p>", {"id": "error", "class": "error"}).hide();
    center.empty();
    center.append($title, $lusr, $iusr, $lpass, $ipass, $error, $submit);
}

function errorShow($msg) {
  if ($error != null) {
    $error.text($msg);
    $error.show();
  }
}