console.log("probando");

obtener_localstorage();
guardar_localstorage();

function obtener_localstorage(){

if(localStorage.getItem("nombre")){
    let viaje=JSON.parse(localStorage.getItem("nombre"));
        console.log(viaje);
}else{
    console.log("No hay entradas en el local storage");
}
}

function guardar_localstorage(){

    let viaje ={
     título: "En el mar la vida es más sabrosa",  
     ruta: "https://goo.gl/maps/a4MzPDLVbtBHnzz48",
     clima: "Parcialmente nublado",
     categoría: "",
     fecha: "cualquiera", 
     descripcion: "Antiguo pueblo de pescadores",
     tips: "Animada vida nocturna", 
     seguridad: "Zona segura",
     estado:"Oaxaca"
        
    };

     localStorage.setItem("nombre", JSON.stringify(viaje));
}
