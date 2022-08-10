const asunto = document.getElementById('asunto');
const mensaje = document.getElementById('mensaje');
const form = document.getElementById('form');
const errorElement = document.getElementById('error');


form.addEventListener('submit', (e) => {
  let messages = []
    if (asunto.value === '' || mensaje.value === '' ) {
      messages.push('Favor de completar los campos requeridos.')
      console.log("No se han ingresado los datos")
      console.log("Completa el asunto y/o mensaje")
    }
    if (messages.length > 0) {
      e.preventDefault()
      errorElement.innerText = messages.join('')
    }
  }
)
