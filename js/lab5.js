//Códgio para hacer Login
var database = [
    {
    username: "Javier",
    password: "Holi"
}];

var userNamePrompt = prompt("Cuál es tu nombre usuario?");
var userWordPrompt = prompt("Igresa tu contraseña: ");

/*Aquí podemos llamar como queramos a las variables*/
function singIn(user, pass) {
    if (user === database[0].username && pass === database[0].password) {
        console.log("Bienvenido :) ");
    } else {
        alert("Error, contraseña o usuario incorrectos");
    }
}

singIn(userNamePrompt, userWordPrompt);
