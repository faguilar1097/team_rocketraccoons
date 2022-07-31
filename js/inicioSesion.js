console.log("Succes!!");


function vincularJSON() {

    // fetch('../assets/users/users.json')

    fetch('../assets/users/users.json')
  .then(responseJSON =>{ return responseJSON.json()} )
  .then(usuarios => {
    console.log(usuarios) 
    localStorage.setItem("Perfiles",JSON.stringify(usuarios));
    // let num = 1; 
    // for (user of usuarios){
    //     console.log(`id: ${user.id } tiene email ${user.email }`)
    //     localStorage.setItem("Perfil "+num,JSON.stringify(user));
    //     num++;
    // }
});
}
vincularJSON();

function obtenerLista(){
    let listaUsuarios = JSON.parse(localStorage.getItem("Perfiles"))
    console.log(listaUsuarios);
    return listaUsuarios
}




function validacion(correo, contra) {

    let listaUsuarios = obtenerLista();
    let acceso = false;

    
    for(let i = 0; i < listaUsuarios.length; i++)

    if (correo == listaUsuarios[i][1] && contra == listaUsuarios[i][2]){
        acceso = true;
    }
    
return acceso;
}

document.querySelector('#boton2').addEventListener('click', iniciarSesion);

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
    







