console.log("Introducir credenciales para inicio de sesión");

// FUNCION PARA ACCEDER AL JSON Y PONERLO EN LOCAL STORAGE
function vincularJSON() {
fetch('../assets/users/users.json')
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
    console.log(listaUsuarios[u].email + "  " + listaUsuarios[u].contraseña);

    if (correo == listaUsuarios[u].email && contra == listaUsuarios[u].contraseña){
        acceso = true;
        console.log("ACCESO CONCEDIDO");
        document.getElementById("mensaje").innerHTML = "¡Bienvenido " + listaUsuarios[u].first_name + " " + listaUsuarios[u].last_name + "!";
        location.href = "prueba.html";
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

    correo = document.querySelector('#usuario').value;
    contra = document.querySelector('#password').value;

    acceso = validacion(correo, contra);
    console.log(acceso);

}



























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
    







