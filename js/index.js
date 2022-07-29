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
for(let i=1; i<=2; i++){
    datosUsers[i-1] = JSON.parse(localStorage.getItem("Perfil "+i));
    }
   
    console.log(datosUsers);

    console.log("Datos aún en memoria local");
   
    llenarDatos(datosUsers,estado);
}
// leerDatos();

function llenarDatos(datosUsuarios,estado){
    if (estado == 1){
        i=0;
    }else{
        i=1
    }
    
        document.getElementById("imgcard1").src =datosUsuarios[i].img1 ;
        document.getElementById("imgcard2").src =datosUsuarios[i].img2 ;
        document.getElementById("imgcard3").src =datosUsuarios[i].img3 ;
        document.getElementById("imgcard4").src =datosUsuarios[i].img4 ;
        
        console.log("Fotos insertadas");
    
 }




