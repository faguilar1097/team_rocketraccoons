const formulario = document.getElementById('formulario');
const inputs = document.querySelectorAll('#formulario input');

const expresiones = {
	usuario: /^[a-zA-Z0-9\_\-]{4,16}$/, // Letras, numeros, guion y guion_bajo
	nombre: /^[a-zA-ZÀ-ÿ\s]{1,40}$/, // Letras y espacios, pueden llevar acentos.
	password: /^.{4,12}$/, // 4 a 12 digitos.
	correo: /^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$/,
	telefono: /^\d{7,14}$/ // 7 a 14 numeros.
   
}
const campos = {
    nombre: false,
    apellido: false,
    intereses: false,
    correo: false,
    password: false,
    telefono: false
}

const validarFormulario = (e)=> {
  switch(e.target.name){
    case "nombre":
    validarCampo(expresiones.nombre, e.target, "nombre");
    break;
    case "apellido":
        validarCampo(expresiones.nombre, e.target, "apellido");
        break;
        case "intereses":
            validarCampo(expresiones.nombre, e.target, "intereses");
            break;
            case "correo":
                validarCampo(expresiones.correo, e.target, "correo");
                break;
                case "password":
                    validarCampo(expresiones.password, e.target, "password");
                    validarPassword2();
                    break;
                    case "password2":
                        validarPassword2();
                        break;
                        case "telefono":
                            validarCampo(expresiones.telefono, e.target, "telefono");
                            break;
  };
}
const validarCampo = (expresion, input, campo) =>{
    if(expresion.test(input.value)){
        document.getElementById(`grupo__${campo}`).classList.remove("formulario__grupo-incorrecto")
        document.getElementById(`grupo__${campo}`).classList.add("formulario__grupo-correcto");
        document.querySelector(`#grupo__${campo} i`).classList.add("fa-check-circle");
        document.querySelector(`#grupo__${campo} i`).classList.remove("fa-times-circle");
        document.querySelector(`#grupo__${campo} .formulario__input-error`).classList.remove("formulario__input-error-activo");
        campos[campo] = true;
    } else{
        document.getElementById(`grupo__${campo}`).classList.add("formulario__grupo-incorrecto");
        document.getElementById(`grupo__${campo}`).classList.remove("formulario__grupo-correcto");
        document.querySelector(`#grupo__${campo} i`).classList.add("fa-times-circle");
        document.querySelector(`#grupo__${campo} i`).classList.remove("fa-check-circle");
        document.querySelector(`#grupo__${campo} .formulario__input-error`).classList.add("formulario__input-error-activo");
        campos[campo] = false;
    }
}
const validarPassword2 = () =>{
    const inputPassword1 = document.getElementById("password");
    const inputPassword2 = document.getElementById("password2");

    if (inputPassword1.value !== inputPassword2.value){
        document.getElementById(`grupo__password2`).classList.add("formulario__grupo-incorrecto");
        document.getElementById(`grupo__password2`).classList.remove("formulario__grupo-correcto");
        document.querySelector(`#grupo__password2 i`).classList.add("fa-times-circle");
        document.querySelector(`#grupo__password2 i`).classList.remove("fa-check-circle");
        document.querySelector(`#grupo__password2 .formulario__input-error`).classList.add("formulario__input-error-activo");
        campos["password"] = false;
    } else{
        document.getElementById(`grupo__password2`).classList.remove("formulario__grupo-incorrecto");
        document.getElementById(`grupo__password2`).classList.add("formulario__grupo-correcto");
        document.querySelector(`#grupo__password2 i`).classList.remove("fa-times-circle");
        document.querySelector(`#grupo__password2 i`).classList.add("fa-check-circle");
        document.querySelector(`#grupo__password2 .formulario__input-error`).classList.remove("formulario__input-error-activo");
        campos["password"] = true;
    }
}

inputs.forEach((input) =>{
    input.addEventListener("keyup" , validarFormulario);
    input.addEventListener("blur" , validarFormulario);
});

/*Validar para que ningún campo se encuentre vacío*/
 formulario.addEventListener("submit",(e) =>{
     e.preventDefault();//Quitar
  
    if(campos.nombre && campos.apellido && campos.intereses && campos.password && campos.telefono && campos.correo){
        // formulario.reset();

        document.getElementById("formulario__mensaje-exito").classList.add("formulario__mensaje-exito-activo");
        setTimeout(()=>{
            document.getElementById("formulario__mensaje-exito").classList.remove("formulario__mensaje-exito-activo");
        },5000);
        location.href = "../html/inicioSesion.html"; 
    
        document.querySelectorAll(".formulario__grupo-correcto").forEach((icono)=>{
            icono.classList.remove("formulario__grupo-correcto");
        });
    } else{
        document.getElementById("formulario__mensaje").classList.add("formulario__mensaje-activo");
    }
 guardar_localstorage();

 });

/**Local Storage */

console.log("Introducir credenciales para Registro");

function obtener_localstorage(){

    if(localStorage.getItem("nombre")){
        let persona =JSON.parse(localStorage.getItem("nombre"));
            console.log(persona);
    }else{
        console.log("No hay entradas en el local storage");
    }
    }

function guardar_localstorage(){
    let name= document.getElementById("nombre").value;
    let lastName= document.getElementById("apellido").value;
    let estadorep = document.getElementById("estado").value;
    let intereses = document.getElementById("intereses").value;
    let passwo = document.getElementById("password").value;
    let number = document.getElementById("telefono").value;
    let email = document.getElementById("correo").value;

    let persona = {
        "nombre": `${name}`,
        "apellido":  `${lastName}`,
        "estado":  `${estadorep}`,
        "intereses":  `${intereses}`,
        "correo":  `${email}`,
        "password":  `${passwo}`,
        "telefono":  `${number}`
    };
    localStorage.setItem("name", name);
    localStorage.setItem("lastName", lastName);
    localStorage.setItem("intereses", intereses);
    localStorage.setItem("estadorep", estadorep);
    localStorage.setItem("email", email);
    localStorage.setItem("passwo", passwo);
    localStorage.setItem("number", number);

    localStorage.setItem("nombre", JSON.stringify(persona)); 
    enviarFetch();  
    fetchInicioSesion();
}

//Envian los datos a la API

//Enviar datos a fetch

function enviarFetch (){
    console.log(JSON.parse(localStorage.getItem("nombre")));

    personaFull = JSON.parse(localStorage.getItem("nombre"));
    persona = { 
        "nombre":` ${personaFull.nombre}`,
       "apellido":` ${personaFull.apellido}`,
        "estadorep": ` ${personaFull.estado}`,
        "intereses": ` ${personaFull.intereses}`
    }
   
    fetch ('https://dviaje-prueba1.herokuapp.com/api/usuario',
    {
        method: "POST",
        body: JSON.stringify(persona),
        headers: {"content-type": "application/json; charset=UTF-8"}
    })
        .then(Response => Response.json())
        .then(json => console.log(json))
        .catch(err => console.log(err));
 }

 //Enviar datos a inicio de sesión
 function fetchInicioSesion(){
    console.log(JSON.parse(localStorage.getItem("nombre")));

    personaFull = JSON.parse(localStorage.getItem("nombre"));
   persona = { 
        "correo":` ${personaFull.correo}`,
       "contrasena":` ${personaFull.password}`,
       "telefono":` ${personaFull.telefono}`
    }
    console.log(persona);
            fetch ('https://dviaje-prueba1.herokuapp.com/api/inicioSesion',
            {
                method: "POST",
                body: JSON.stringify(persona),
                headers: {"content-type": "application/json; charset=UTF-8"}
            })
                .then(Response => Response.json())
                .then(json => console.log(json))
                .catch(err => console.log(err));


 }
 
