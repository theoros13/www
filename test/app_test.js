(function($){

    
    $('h1').click(function(){
        if ($( "#page" ).css('width') == '1910px' ) {
            $( "#page" ).transition({
                x: 280,
                duration: 500
            });
            $( "#page" ).css('width', '1630px');
            pose = 1;
        }else{
            $( "#page" ).transition({
                x: 0,
                duration: 500
            });
            $( "#page" ).css('width', '1910px');
            pose = 0;
        }
            
    });

    $('.supre').click(function(){
        $('.desc').remove();
    });

})(jQuery);