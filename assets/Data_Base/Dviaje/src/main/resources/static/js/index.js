
console.log("Succes!!");
fotosDefault();
infoApi();
const estadosRep = ["Baja California","Baja California Sur","Coahuila","Chihuahua","Durango","Sinaloa",
"Sonora","Zacatecas","Nuevo Leon","San Luis Potosi","Tamaulipas","Aguascalientes","Colima","Jalisco",
"Michoacan","Nayarit","Campeche","Oaxaca","Puebla","Tabasco","Tlaxcala","CDMX","Guanajuato","Guerrero",
"Hidalgo","Estado de Mexico","Morelos","Queretaro","Veracruz","Chiapas","Quintana Roo","Yucatan"];

console.log(estadosRep[31]);
function ExecuteMap(indice){
    VincularJSON(indice);
   
}

function VincularJSON(index_estado) {
    // fetch('./assets/users/users.json')
    fetch('/js/users.json')
  .then(responseJSON =>{ return responseJSON.json()} )
  .then(usuarios => {
  
    let estadoRep = estadosRep[index_estado];
    for (user of usuarios){

        if(user.estado == estadoRep){
        console.log(`Comparación de estado ${user.estado} vs ${estadoRep} return: ${user.estado == estadoRep} `);
          
       
        let info = {
            "estado":user.estado,
            "img1":user.img1,
            "text1":user.titleImg1,
            "img2":user.img2,
            "text2":user.titleImg2,
            "img3":user.img3,
            "text3":user.titleImg3,
            "img4":user.img4,
            "text4":user.titleImg4,
        }
        console.log(info);
        localStorage.setItem("Info",JSON.stringify(info));
        }   
    }
});
leerDatos();
}



function leerDatos(){
    
    let datosUsers;

    datosUsers = JSON.parse(localStorage.getItem("Info"));
    
    console.log("Publicaciones encontradas:");
    console.log(datosUsers);
    console.log(":D");
    llenarDatos(datosUsers);
}
// leerDatos();

function llenarDatos(datosUsuarios){
  
        console.log(datosUsuarios)
        console.log(datosUsuarios.img1)
    
        document.getElementById("imgcard1").src =datosUsuarios.img1 ;
        document.getElementById("TextoTarjeta1").innerHTML =datosUsuarios.text1 ;
        document.getElementById("imgcard2").src =datosUsuarios.img2 ;
        document.getElementById("TextoTarjeta2").innerHTML =datosUsuarios.text2 ;
        document.getElementById("imgcard3").src =datosUsuarios.img3 ;
        document.getElementById("TextoTarjeta3").innerHTML =datosUsuarios.text3 ;
        document.getElementById("imgcard4").src =datosUsuarios.img4 ;
        document.getElementById("TextoTarjeta4").innerHTML =datosUsuarios.text4 ;
        
        console.log("Fotos insertadas");
    
 }


 function fotosDefault(){
    document.getElementById("imgcard1").src ="https://i.ibb.co/wgGQhGg/Basilica.jpg";
    document.getElementById("TextoTarjeta1").innerHTML = "Basilica de Guadalupe";
    document.getElementById("imgcard2").src ="https://www.travelreport.mx/wp-content/uploads/2019/08/las-islas-del-lago-de-patzcuaro-pescadores.jpg";
    document.getElementById("TextoTarjeta2").innerHTML ="Lago de Pátzcuaro";
    document.getElementById("imgcard3").src ="https://sinaloa.travel/images/pages/home/atractivos_turisticos.jpg";
    document.getElementById("TextoTarjeta3").innerHTML ="Faro,Mazatlán";
    document.getElementById("imgcard4").src ="https://noticiasenfasis.com.mx/wp-content/uploads/2022/05/WhatsApp-Image-2022-05-12-at-9.44.24-AM.jpeg";
    document.getElementById("TextoTarjeta4").innerHTML ="La Quebrada Acapulco";
 }

 function infoApi(){
    fetch('https://dviaje-prueba1.herokuapp.com/api/resena')
    .then(responseJSON =>{ return responseJSON.json()} )
    .then(resena => {
        let i=1;
        for (informacion of resena){
  
          
          console.log(`INFO DE API:`);
          console.log(informacion.description);
          if (i<=3){
          console.log("Experiencias"+i);
          document.getElementById("Experiencias"+i).innerHTML=informacion.description;
          i++;
          }
          
      }
  });



 }