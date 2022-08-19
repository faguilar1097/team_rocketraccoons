console.log("probando");

    const tituloViaje=document.getElementById("titulo");
    const rutaViaje=document.getElementById("ruta");
    const tipoClima=document.getElementById("clima");
    const categoriaV=document.getElementById("catego");   
    const mejorFecha=document.getElementById("fecha");
    const desViaje=document.getElementById("descripcion");
    const tipsViajes=document.getElementById("tips");
    const vipsViajes=document.getElementById("seguridad");
    const estadoRep=document.getElementById("estado");
    const formulario = document.getElementById('form');

const campos = {
    tituloViaje,
    rutaViaje,
    tipoClima,
    categoriaV,
    mejorFecha,
    desViaje,
    tipsViajes,
    vipsViajes,
    estadoRep
}

const nombre = {
    tituloViaje,
    rutaViaje,
    tipoClima,
    categoriaV,
    mejorFecha,
    desViaje,
    tipsViajes,
    vipsViajes,
    estadoRep
}

/*Validar para que ningún campo se encuentre vacío*/
formulario.addEventListener("submit",(e) =>{
    e.preventDefault();//Quitar
 
   if(campos.tituloViaje && campos.rutaViaje && campos.tipoClima && campos.categoriaV && campos.mejorFecha && campos.desViaje && campos.tipsViajes && campos.vipsViajes && campos.estadoRep)
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


   function guardar_localstorage() {
    let tituloViaje=document.getElementById("titulo").value;
    let rutaViaje=document.getElementById("ruta").value;
    let tipoClima=document.getElementById("clima").value;
    let categoriaV=document.getElementById("catego").value;   
    let mejorFecha=document.getElementById("fecha").value;
    let desViaje=document.getElementById("descripcion").value;
    let tipsViajes=document.getElementById("tips").value;
    let vipsViajes=document.getElementById("seguridad").value;
    let estadoRep=document.getElementById("estado").value;

   let persona = {
       "titulo": `${tituloViaje}`,
       "ruta":  `${rutaViaje}`,
       "clima":  `${tipoClima}`,
       "catego":  `${categoriaV}`,
       "fecha":  `${mejorFecha}`,
       "descripcion":  `${desViaje}`,
       "tips":  `${tipsViajes}`,
       "seguridad":  `${vipsViajes}`,
       "estado":  `${estadoRep}`
   };
   localStorage.setItem("titulo", tituloViaje);
   localStorage.setItem("ruta", rutaViaje);
   localStorage.setItem("clima", tipoClima);
   localStorage.setItem("catego", categoriaV);
   localStorage.setItem("fecha", mejorFecha);
   localStorage.setItem("descripcion", desViaje);
   localStorage.setItem("tips", tipsViajes);
   localStorage.setItem("seguridad", vipsViajes);
   localStorage.setItem("estado", estadoRep);

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
       "titulo": `${personaFull.titulo}`,
       "ruta":  `${personaFull.ruta}`,
       "clima":  `${personaFull.clima}`,
       "catego":  `${personaFull.catego}`,
       "fecha":  `${personaFull.fecha}`,
       "descripcion":  `${personaFull.descripcion}`,
       "tips":  `${personaFull.tips}`,
       "seguridad":  `${personaFull.seguridad}`,
       "estado":  `${personaFull.estado}`
   }
  
   fetch ('https://dviaje-prueba1.herokuapp.com/api/publicaciones',
   {
       method: "POST",
       body: JSON.stringify(persona),
       headers: {"content-type": "application/json; charset=UTF-8"}
   })
       .then(Response => Response.json())
       //.then(json => console.log(json))
       .catch(err => console.log(err));
}

//Enviar datos a inicio de sesión
function fetchInicioSesion(){
   console.log(JSON.parse(localStorage.getItem("nombre")));

   personaFull = JSON.parse(localStorage.getItem("nombre"));

           fetch ('https://dviaje-prueba1.herokuapp.com/api/publicaciones',
           {
               method: "POST",
               body: JSON.stringify(persona),
               headers: {"content-type": "application/json; charset=UTF-8"}
           })
               .then(Response => Response.json())
               
               .catch(err => console.log(err));


}