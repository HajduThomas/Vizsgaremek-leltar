const uri = window.location.href + '/src/login.php';
const center = document.getElementById("center");

center.addEventListener('submit', function(event) {
    event.preventDefault()
    //TODO: check for null/empty spaces
    const loginData = {
        usr: document.getElementById("usr").value,
        pass: document.getElementById("pass").value
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
            console.log("Posted!");
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
    var $title = $("<h1>", {text: "Login"});
    var $lusr = $("<label>", {"for": "usr", text: "Username:"});
    var $iusr = $("<input>", {"type": "text", "id": "usr", "placeholder": "username..."});
    var $lpass = $("<label>", {"for": "pass", text: "Password:"});
    var $ipass = $("<input>", {"type": "password","id": "pass", "placeholder": "password..."});
    var $submit = $("<input>", {"type": "submit", "value": "Login"});
    $(center).empty();
    $(center).append($title, $lusr, $iusr, $lpass, $ipass, $submit);
}