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

function purchaseP() {
    document.getElementById("pandemic").style.fontStyle = "italic";
    var qty = document.getElementById("cantidad").value;
    if (qty > 0) {
        if (qty >= 10 && qty <= 50) {
            alert("Felcidades, tienes un descuento del 10%");
            alert("Precio normal : $" + 40.02 + "\nPrecio con descuento: $" + (40.02 - (40.02 * 0.10)) + "\nPrecio total: $" + (40.02 - (40.02 * 0.10)) * qty);
            alert("\nGacias por preferirnos!!!!!!\n");
        } else if (qty > 50) {
            alert("Felcidades, tienes un descuento del 50%");
            alert("Precio normal : $" + 40.02 + "\nPrecio con descuento: $" + (40.02 - (40.02 * 0.50)) + "\nPrecio total: $" + (40.02 - (40.02 * 0.50)) * qty);
            alert("\nGacias por preferirnos!!!!!!\n");
        } else {
            alert("Precio Final : $" + 40.02 * qty);
            alert("\nGacias por preferirnos!!!!!!\n");
        }
    }
}
