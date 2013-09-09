$(document).ready(function() {



  $('#back_top').click(function () {
    $("body").animate({ scrollTop: 0 }, 1000);
    //$("body").effect("bounce", { direction:'up', times:4, distance:31 }, 450);
    return false;
});

$("#show-menu-13").click(function(event){
	
  if(window.location.pathname == "/services/spetsefekti/zvuk-svitlo" || window.location.pathname == "/services/spetsefekti/pirotehnika" || window.location.pathname == "/services/spetsefekti/novaya-sab-kategoriya" || window.location.pathname == "/services/spetsefekti/Low-fog"){
    //event.preventDefault();
  }else{
    $("#show-menu-13 ul").slideToggle("slow", function(){});
  	$(this).toggleClass("sub-active");

    $("#show-13").each(function (i) {
      if($(this).text() != "-"){
        $("#show-13").text("-");
      }else{
        $("#show-13").text("+");
      }
    });
  }

});

$("#show-menu-16").click(function(event){
  
  if(window.location.pathname == "/services/shou-programi/shou-baleti" || window.location.pathname == "/services/shou-programi/zirki-estradi" || window.location.pathname == "/services/shou-programi/artisti"){
    //event.preventDefault();
  }else{
    $("#show-menu-16 ul").slideToggle("slow", function(){});
    $(this).toggleClass("sub-active");

    $("#show-16").each(function (i) {
      if($(this).text() != "-"){
        $("#show-16").text("-");
      }else{
        $("#show-16").text("+");
      }
    });
  }

});

$("#show-menu-17").click(function(event){
  
  if(window.location.pathname == "/services/eksklyuziv/zaproshennya" ){
    //event.preventDefault();
  }else{
    $("#show-menu-17 ul").slideToggle("slow", function(){});
    $(this).toggleClass("sub-active");

    $("#show-17").each(function (i) {
      if($(this).text() != "-"){
        $("#show-17").text("-");
      }else{
        $("#show-17").text("+");
      }
    });
  }

});

});
