window.onload=iniciar;
function  iniciar(){
    document.getElementById("registrar").addEventListener('click',validar,false);
    
}

function valiadarNombre(){
    var elmento=document.getElementById("nombre");
    if(!elmento.checkValidity()){
        error(elmento);
        return false;
    }
    return true;
}
function valiadarApellido(){
    var elmento=document.getElementById("apellidos");
    if(!elmento.checkValidity()){
        error(elmento);
        return false;
    }
    return true;
}
function valiadarEmail(){
    var elmento=document.getElementById("email");
    if(!elmento.checkValidity()){
        error(elmento);
        return false;
    }
    return true;
}
function valiadarNickname(){
    var elmento=document.getElementById("nickname");
    if(!elmento.checkValidity()){
        error(elmento);
        return false;
    }
    return true;
}
function valiadarContra(){
    var elmento=document.getElementById("contra");
    if(!elmento.checkValidity()){
        error(elmento);
        return false;
    }
    return true;
}

function validar(e){
    borrarError();
    if(valiadarNombre()&& valiadarApellido()&& valiadarEmail()&& valiadarEmail()&& valiadarNickname()&& valiadarContra()&&confirm("¿Esta seguro de registrarse?")){
        return true;
        
    }else{
        e.preventDefault();
        return false;
    }
}

function error(elemento){
    document.getElementById("mensajeError").innerHTML=elemento.validationMessage;
    elemento.className="erronea";
    elemento.focus();
    
}

function borrarError(){
    var formulario=document.forms[0];
    for(var i=0;i<formulario.elements.length;i++){
        formulario.elements[i].className="valido"; 
    }
}

