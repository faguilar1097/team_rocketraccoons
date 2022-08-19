console.log("Introducir credenciales para inicio de sesión");

// FUNCION PARA ACCEDER AL JSON Y PONERLO EN LOCAL STORAGE
function vincularJSON() {
fetch('https://dviaje-prueba1.herokuapp.com/api/inicioSesion')
  .then(responseJSON =>{ return responseJSON.json()} )
  .then(usuarios => {
    // console.log(usuarios) 
    localStorage.setItem("Perfiles",JSON.stringify(usuarios));
    
})
.catch(error => console.log(error));
}
vincularJSON();

// Función para obtener el archivo JSON del local Storage y asignarlo a listaUsuarios
function obtenerLista(){
    let listaUsuarios = JSON.parse(localStorage.getItem("Perfiles"))
    console.log(listaUsuarios);
    return listaUsuarios
}

/**
 * Con esta funcion validamos la contraseña comparando los datos de entrada con el local Storage
 * @param {*} correo 
 * @param {*} contraseña 
 * @returns acceso
 */
function validacion(correo, contra) {

    let listaUsuarios = obtenerLista();
    let acceso = false;
    

    for( let u=0; u < listaUsuarios.length; u++){
    console.log(listaUsuarios[u].correo + "  " + listaUsuarios[u].contrasena);

    if (correo == listaUsuarios[u].correo && contra == listaUsuarios[u].contrasena){
        acceso = true;
        console.log("ACCESO CONCEDIDO");
        document.getElementById("mensaje").innerHTML = "¡Bienvenido " + listaUsuarios[u].first_name + " " + listaUsuarios[u].last_name + "!";
        //guardando datos en local storage
        sessionStorage.setItem('correo', listaUsuarios[u].correo);
        sessionStorage.setItem('contra',listaUsuarios[u].contrasena);
        location.href = "../html/feed.html";
    }
    else{
        
        // document.getElementById("formulario__mensaje1").classList.add("formulario__mensaje1-activo");
        // setTimeout(()=>{  document.getElementById("formulario__mensaje").classList.remove("formulario__mensaje-activo")

        // },5000)
        
        
    }
}
return acceso;
}

document.querySelector('#boton2').addEventListener('click', iniciarSesion);

//FUNCION PARA INICIAR SESION
function iniciarSesion(){
    let correo = '';
    let contra = '';
    let acceso = false;

    correo = document.querySelector('#correo').value;
    contra = document.querySelector('#password').value;

    acceso = validacion(correo, contra);
    console.log(acceso);

}

//--------------------------------------VALIDACIONES------------------------------------
const formulario = document.getElementById('formulario');
const inputs = document.querySelectorAll('#formulario input');

const expresiones = {
	
	password: /^.{4,12}$/, // 4 a 12 digitos.
	correo: /^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$/,
	
}
const campos = {
    
    correo: false,
    password: false,
    
}

const validarFormulario = (e)=> {
  switch(e.target.name){
    case "correo":
    validarCampo(expresiones.correo, e.target, "correo");
    break;
    
        case "password":
        validarCampo(expresiones.password, e.target, "password");
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


inputs.forEach((input) =>{
    input.addEventListener("keyup" , validarFormulario);
    input.addEventListener("blur" , validarFormulario);
});

/*Validar para que ningún campo se encuentre vacío*/
formulario.addEventListener("submit",(e) =>{
    e.preventDefault(); //Quitar
    
    if(campos.password && campos.correo){
        
        formulario.reset();


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
        setTimeout(()=>{  document.getElementById("formulario__mensaje").classList.remove("formulario__mensaje-activo");

        },5000)
        console.log("Sale mensaje de error");
        
    }
});

























// function leerDatos(){
    
//     let datosUsers =[];
//     for (let i=1; i<=3;i++){
//         datosUsers[i-1] = JSON.parse(localStorage.getItem("Perfil "+i));
//     }
//     console.log(datosUsers);
//     console.log("La longitud de usuarios es: " + datosUsers.length);
//     console.log("Datos aún en memoria local");
// }
// //     for (let i = 0;i < listaUsuarios.length; i++) {
// //         if (correo == listaUsuarios[i][0] && contrasenia == listaUsuarios[i][1]) console.log("ACCESO CONCEDIDO");
// //         else console.log("ACCESO DENEGADO");

        
// //     }

// //     console.log(estado);
// //     let datosUsers=[];
// // for(let i=1; i<=3; i++){
// //     datosUsers[i-1] = JSON.parse(localStorage.getItem("Perfil "+i));
// //     }
   
// //     console.log(datosUsers);
// //     console.log(datosUsers.length);
// //     console.log("Datos aún en memoria local");
   
// //     llenarDatos(datosUsers,email,);
// // }

// function validacion() {
    

//     let user = document.getElementById("usuario").value;
//     let pass = document.getElementById("password").value;
    
//     if (user == user.email.value && pass == user.password.value) console.log("INICIO EXITOSO");
//     else console.log("Acceso Denegado");
// }
    







