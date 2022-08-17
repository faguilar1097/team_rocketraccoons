console.log("probando");

// function captura() {
//     let tituloViaje=document.getElementById("titulo").value;
//     let rutaViaje=document.getElementById("ruta").value;
//     let tipoClima=document.getElementById("clima").value;
//     let categoriaV=document.getElementById("catego").value;   
//     let mejorFecha=document.getElementById("fecha").value;
//     let desViaje=document.getElementById("descripcion").value;
//     let tipsViajes=document.getElementById("tips").value;
//     let vipsViajes=document.getElementById("seguridad").value;
//     let estadoRep=document.getElementById("estado").value;
    
// console.log(tituloViaje);
// console.log(rutaViaje);
// console.log(tipoClima);
// console.log(categoriaV);
// console.log(mejorFecha);
// console.log(desViaje)
// console.log(tipsViajes);
// console.log(segViajes);
// console.log(estadoRep);
// }

// function VinJSON() {
//     // fetch('./assets/users/users.json')
//     fetch('publicaciones.json')
//   .then(responseJSON =>{ return responseJSON.json()} )
//   .then(publicaciones => {
//     console.log(publicaciones) 
//     let num = 1; 
//     for (publi of publicaciones){
//         console.log(`titulo: ${publi.titulo } ruta:${publi.ruta}  clima: ${publi.clima}  
//        catego: ${publi.catego} fecha: ${publi.fecha} descripcion: ${publi.fecha} tips: ${publi.tips} 
//         seguridad:${publi.seguridad} estado: ${publi.estado}`)
//         localStorage.setItem("Publicaciones "+num,JSON.stringify(publi));
//         num++;
//     }
// });


// }

const express = require('express')
const app = express();
const path = require('path')
const multer = require('multer')
const upload = multer({ dest: 'images/' })

app.get('/', (req, res) => {
  res.sendFile(path.resolve('index.html'))
})

app.post('/', upload.single('image'), (req, res) => {
  console.log(req.file)
  console.log(req.body.username)
  res.status(200)
})

app.listen(3005, () => {
  console.log('app en el puerto 3005')
})