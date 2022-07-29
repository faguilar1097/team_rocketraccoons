console.log("Succes!!");

function VincularJSON() {
    fetch('./assets/users/users.json')
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

function leerDatos(estado){
    console.log(estado);
    let datosUsers=[];
for(let i=1; i<=3; i++){
    datosUsers[i-1] = JSON.parse(localStorage.getItem("Perfil "+i));
    }
   
    console.log(datosUsers);
    console.log(datosUsers.length);
    console.log("Datos aún en memoria local");
   
    llenarDatos(datosUsers,estado);
}
// leerDatos();

function llenarDatos(datosUsuarios,estado){
   switch(estado){
    case 1: 
        i=0;
        break;
    case 2:
        i=1;
        break;
    case 3:
        i=2;
        break;
   }
    
        document.getElementById("imgcard1").src =datosUsuarios[i].img1 ;
        document.getElementById("imgcard2").src =datosUsuarios[i].img2 ;
        document.getElementById("imgcard3").src =datosUsuarios[i].img3 ;
        document.getElementById("imgcard4").src =datosUsuarios[i].img4 ;
        document.getElementById("TextoTarjeta1").innerHTML =datosUsuarios[i].titleImg1 ;
        document.getElementById("TextoTarjeta2").innerHTML =datosUsuarios[i].titleImg2 ;
        document.getElementById("TextoTarjeta3").innerHTML =datosUsuarios[i].titleImg3 ;
        document.getElementById("TextoTarjeta4").innerHTML =datosUsuarios[i].titleImg4 ;
        
        console.log("Fotos insertadas");
    
 }




