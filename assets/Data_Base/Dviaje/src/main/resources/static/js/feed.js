console.log("Leyendo datos de publicaciones ... ");
// GET

function VincularJSON() {
    fetch("../js/ufeed.json")
  .then(responseJSON =>{ return responseJSON.json()} )

  .then(publicacion =>{
    console.log(publicacion) 
        localStorage.setItem("Publicacion",JSON.stringify(publicacion));
});
}

VincularJSON();
leerDatos();

function leerDatos(){
    let datosUsers;
    datosUsers = JSON.parse(localStorage.getItem("Publicacion"));
    console.log("Publicaciones encontradas:");
    console.log(datosUsers.avatar);
    console.log(":D");
    llenarDatos(datosUsers);
}

function llenarDatos(informacion){
    document.getElementById("imgPerfil").src =informacion[0].avatar ;
    console.log(informacion[0].avatar);

    document.getElementById("imgcard1").src =informacion[0].img1 ;
    document.getElementById("TextoTarjeta1").innerHTML =informacion[0].titleImg1 ;
    console.log(informacion[0].titleImg1);
    console.log(informacion[0].img2);
    document.getElementById("imgcard2").src =informacion[0].img2 ;
    document.getElementById("TextoTarjeta2").innerHTML =informacion[0].titleImg2 ;
    document.getElementById("imgcard3").src =informacion[0].img3 ;
    document.getElementById("TextoTarjeta3").innerHTML =informacion[0].titleImg3 ;
    document.getElementById("imgcard4").src =informacion[0].img4 ;
    document.getElementById("TextoTarjeta4").innerHTML =informacion[0].titleImg4 ;
    document.getElementById("imgcard5").src =informacion[0].img5 ;
    document.getElementById("TextoTarjeta5").innerHTML =informacion[0].titleImg5 ;
    document.getElementById("imgcard6").src =informacion[0].img6 ;
    document.getElementById("TextoTarjeta6").innerHTML =informacion[0].titleImg6 ;


    console.log("Que está pasaaaandooo?!!");
}

