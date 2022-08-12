//Validación del formulario
const asunto = document.getElementById('asunto');
const mensaje = document.getElementById('mensaje');
const form = document.getElementById('form');
const errorElement = document.getElementById('error');


form.addEventListener('submit', (e) => {
  let messages = []
    if (asunto.value === '' || mensaje.value === '' ) {
      messages.push('Favor de completar los campos requeridos.')
      console.log("No se han ingresado los datos")
      console.log("Completa el asunto y/o mensaje")
    }
    if (messages.length > 0) {
      e.preventDefault()
      errorElement.innerText = messages.join('')
    }
  }
)

//************************ JSON ************************* */
let main = function(){
  captura_boton();
}

let captura_boton = function() {
  document.querySelector(".myButton input").setAttribute("onclick","dataRead()");
}

let dataRead = function(){
  console.log("Intentaremos leer el formulario");
  console.log(
    document.querySelector("#asunto").value,
    document.querySelector("#mensaje").value
  );
  let myObject = {
    // clave : valor
    asunto : document.querySelector("#asunto").value,
    mensaje : document.querySelector("#mensaje").value
  };
  console.log(myObject);

//JSON necesita pasar el objeto a String
console.log(JSON.stringify(myObject)); //Sirve para ver que hace el stringify

//Guardamos los datos en Local Storage (Persistencia de datos)
save_localStorage(myObject);
}

let save_localStorage = function(myObj) {
  localStorage.setItem("miInfo", JSON.stringify(myObj));
}

let read_localStorage = function() {
  let miInfo = localStorage.getItem("miInfo");
  console.log(miInfo);
  let myObject = JSON.parse(miInfo);
  console.log(myObject);
  document.querySelector("#asunto").value = myObject.asunto;
  document.querySelector("#mensaje").value = myObject.mensaje;
}

let reset = function() {
  document.querySelector("#asunto").value = "";
  document.querySelector("#mensaje").value = "";
}

main(); //Método principal
