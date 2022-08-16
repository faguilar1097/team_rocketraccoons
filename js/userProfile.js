console.log("Leyendo la información del usuario");

let URL = '../user.json'
// FUNCION PARA ACCEDER AL JSON Y PONERLO EN LOCAL STORAGE
function vincularJSON() {
fetch(URL)
  .then(responseJSON =>{ return responseJSON.json()} )
  .then(usuarios => {
    localStorage.setItem("datos",JSON.stringify(usuarios));   
})
.catch(error => console.log(error));
leerDatos();
}
vincularJSON();

// Función para obtener el archivo JSON del local Storage y asignarlo a datosUsuarios
function obtenerLista(){
    let datosUsuarios = JSON.parse(localStorage.getItem("datos"))
    console.log(datosUsuarios);
    return datosUsuarios;
}

/**
 * Con esta funcion leemos los datos del local storage 
 */
function leerDatos() {

    let datosUsuarios = obtenerLista();
    
    for( let u=0; u < datosUsuarios.length; u++){
        console.log(datosUsuarios[u].first_name + "  " + datosUsuarios[u].last_name);

        console.log("CARGANDO CONTENIDO...");
        document.getElementById("nombre").innerHTML = datosUsuarios[u].first_name + " " + datosUsuarios[u].last_name + "<br>" + datosUsuarios[u].estado + "<br> Local Traveler <br>";
        
        document.getElementById("img_secundaria").src =datosUsuarios[u].avatar ;
        document.getElementById("amigo1").src =datosUsuarios[u].amigo1 ;
        document.getElementById("amigo2").src =datosUsuarios[u].amigo2 ;
        document.getElementById("amigo3").src =datosUsuarios[u].amigo3 ;
        document.getElementById("amigo4").src =datosUsuarios[u].amigo4 ;
        document.getElementById("amigo5").src =datosUsuarios[u].amigo5 ;
        document.getElementById("amigo6").src =datosUsuarios[u].amigo6 ;
        document.getElementById("amigo7").src =datosUsuarios[u].amigo7 ;
        document.getElementById("amigo8").src =datosUsuarios[u].amigo8 ;
        document.getElementById("Place1").src =datosUsuarios[u].wish1 ;
        document.getElementById("Place2").src =datosUsuarios[u].wish2 ;
        document.getElementById("Place3").src =datosUsuarios[u].wish3 ;
        document.getElementById("Place4").src =datosUsuarios[u].wish4 ;
        document.getElementById("image1").src =datosUsuarios[u].collage1 ;
        document.getElementById("image2").src =datosUsuarios[u].collage2 ;
        document.getElementById("image3").src =datosUsuarios[u].collage3 ;
        document.getElementById("image4").src =datosUsuarios[u].collage4 ;
        document.getElementById("image5").src =datosUsuarios[u].collage5 ;
        document.getElementById("image6").src =datosUsuarios[u].collage6 ;
        

    }
    
}
 