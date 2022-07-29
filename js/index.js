console.log("Succes!!");

function VincularJSON() {
    fetch('./assets/users/users.json')
  .then(responseJSON =>{ return responseJSON.json()} )
  .then(usuarios => {
    console.log(usuarios) 
    for (user of usuarios){
        console.log(`id: ${user.id } tiene email ${user.email }`)
    }
});

}
VincularJSON();

