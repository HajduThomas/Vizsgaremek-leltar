const uri = window.location.href + '/src/login.php';
const center = document.getElementById("center");
var $error = null;

center.addEventListener('submit', function(event) {
    event.preventDefault()
    //TODO: check for null/empty spaces
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
        } else if (result.status == 401) {
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
        console.log(result);
        if (result.status == 200) {
            //console.log("work");
            buildLogin();
        } else {
            center.innerHTML = "<h2>"+result.data+"</h2>";
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
    $(center).empty();
    $(center).append($title, $lusr, $iusr, $lpass, $ipass, $error, $submit);
}

function errorShow($msg) {
  if ($error != null) {
    $error.text($msg);
    $error.show();
  }
}