//Problema 1
var num1 = prompt("Dame un número mayor a 0");
var i;

for (i=1;i<=num1;i++){
    console.log(i+" " +" "+ Math.pow(i,2))
}
for (i = 1; i <= num1; i++) {
    console.log(i+" " + " "+ Math.pow(i, 3))
}

//Problema 2
var resultado = prompt("Dame un número del 0 al 40 para adivinar la suma");
    var x1 = Math.floor((Math.random()*20)+1);
    var x2 = Math.floor((Math.random() * 20) + 1);
var respuesta = x1 + x2;
    console.log("El resultado fue "+respuesta+" Tu nos diste "+ resultado);

//Problema 4

//Problema 5

//Problema 6
alert("¿Te alcanza para un gansito del oxxo?")
var dinero = prompt("¿Cuánto dinero tienes?");

if (dinero <= 0) {
    alert("Thank you. Have a nice day!");
} else if (dinero > 12) {
    alert("Si te alcanza! :D Cuesta $12 y tienes $" + dinero + ".");
} else if (dinero <= 11) {
    alert("No te alcanza :( ")
}