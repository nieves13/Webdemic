function busca(){
  var texto = document.getElementById("buscar").value;
  var vEscrito = texto.toLowerCase();

  var fila = document.getElementsByTagName("div");
  var command = document.getElementsByClassName("command");


  for (var i = 0; i < fila.length; i++){
    fila[i].setAttribute("class", "oculta");
  }

  for (var i = 0; i < command.length; i++){
    var vCommand = command[i].textContent;
    var minuscula = vCommand.toLowerCase();
    if(minuscula.includes(vEscrito) == true){
      fila[i].setAttribute("class", "muestra");
    }
  }
}
