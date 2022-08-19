console.log("Leyendo datos de la base de datos ...");

//Boton dinámico
let btn = document.getElementById("usuarios");
btn.addEventListener("click", users(), true);

function users() {
    return link('https://dviaje-prueba1.herokuapp.com/api/usuario');
}

function link(url) {
    fetch(url)
        .then(responseJSON => { 
            return responseJSON.json() 
        })
        .then(usuarios => guardarDatos(usuarios));
}

function guardarDatos(usuarios) {
    //console.log(usuarios.data[0])
    for (user of usuarios) {
        //console.log(`id: ${user.id} tiene email ${user.email}`)
        let indice = user.id;
        localStorage.setItem(indice, JSON.stringify(user));
    }
    recuperarDatos();
    imprimir(usuarios);
}

function recuperarDatos() {
    let datos = "";
    for (let i = 1; i <= localStorage.length; i++) { //i=i+1; i=+; datos = datos+1
        datos = JSON.parse(localStorage.getItem(i));// i = a la llave indice
        console.log(datos);
        datos = datos + 
        `<tr><td>${user.idusuario} </td>
        <td><img class="avatar" src ="${user.imagen_perfil}"> </td>
        <td>${user.nombre} </td>
        <td>${user.apellido} </td>
        <td>${user.estadorep} </td>
        <td>${user.lugares_visitados} </td>`;
    }
    document.getElementById("data").innerHTML = datos;
}

function imprimir(usuarios) {
    let datos = "";
    let i = 1;
    for (let user of usuarios) {
        console.log(user);
        datos = datos + `<tr><td>${user.idusuario} </td>
        <td><img class="avatar" src ="${user.imagen_perfil}"> </td>
                            <td>${user.nombre} </td>
                            <td>${user.apellido} </td>
                            <td>${user.estadorep} </td> 
                            <td>${user.lugares_visitados} </td>
                            <td><button onclick="borrar(${i})" class="btn bg-body text-dark rounded-pill shadow-lg" type="button" id="borrar"><strong> Borrar </strong></button></td>`;
                            i++;
    }
    document.getElementById("data").innerHTML = datos;
}

function borrar(idusuario) {
  link = "https://dviaje-prueba1.herokuapp.com/api/usuario/" + idusuario;
  console.log(link);
  fetch (link,
  {
      method: "DELETE"
      // body: JSON.stringify(persona),
      // headers: {"content-type": "application/json; charset=UTF-8"}
  })
      .then(Response => Response.json())
      .then(json => console.log(json))
      .catch(err => console.log(err));
}