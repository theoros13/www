var url = "desc.php";  

function getPersonne(id){

    $.get(url, {action:"getPersonne", id:id}, function(data){
        if(data.erreur == "ok"){
            $('.desc').remove();
            $('#page').append(data.personne);   
            $( "#page" ).transition({
                x: 0,
                duration: 500
            });
            $( "#page" ).css('width', '1910px');     
        }
    },"json");

    return false;

}


