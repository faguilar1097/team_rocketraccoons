console.log("Succes!!");

function VincularJSON() {
    // fetch('../assets/users/users.json')
    fetch('../assets/users/users.json')
  .then(responseJSON =>{ return responseJSON.json()} )
  .then(usuarios => {
    console.log(usuarios) 
    let num = 1; 
    for (user of usuarios){
        console.log(`id: ${user.id } tiene email ${user.email }`)
        localStorage.setItem("Perfil "+num,JSON.stringify(user));
        num++;
    }
});
}
VincularJSON();

function obtener(){
    let listaUsuarios = JSON.parse(localStorage.getItem('Perfil ' + i))

    return listaUsuarios
}

function validacion (correo, contrasenia){
    let listaUsuarios = obtener ();
    let acceso = false;

    for (let i = 0;i < listaUsuarios.length; i++) {
        if (correo == listaUsuarios[i][0] && contrasenia == listaUsuarios[i][1]) console.log("ACCESO CONCEDIDO");
        else console.log("ACCESO DENEGADO");

        
    }

}
// function login() {
//     let user;
//     let pass;

//     user = document.getElementById("usuario").value;
//     pass = document.getElementById("password").value;
    
//     if (user == user.email.value && pass == user.password.value) console.log("INICIO EXITOSO");
//     else console.log("Acceso Denegado");
// }
    







