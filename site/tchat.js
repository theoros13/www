var url = "tchatAjax.php";
var lastid = 0;
var timer = setInterval(getMessage, 2000);
var timer = setInterval(getPersonne, 5000);


function getMessage(){

        $.get(url, {action:"getMessage", lastid:lastid}, function(data){
            if(data.erreur == "ok"){
                $('#messages').append(data.result);
                lastid = data.lastid;
                if (data.result != "") {
                    $('#messages').animate({scrollTop:$('#messages').prop('scrollHeight')}, 50)
                }
                
            }
        },"json");

        return false;

}

function getPersonne(){

    $.get(url, {action:"getPersonne"}, function(data){
        if(data.erreur == "ok"){
            $('li').remove();
            $('aside ul').append(data.personne);            
        }
    },"json");

    return false;

}