
$(document).ready(function(){
    $('nav ul li a').click(function(){
        $("ul li a").removeClass(".active-page");
        $(this).addClass(".active-page");
    });
});