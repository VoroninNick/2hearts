$(document).ready(function() {



  $('#back_top').click(function () {
    $("body").animate({ scrollTop: 0 }, 1000);
    //$("body").effect("bounce", { direction:'up', times:4, distance:31 }, 450);
    return false;
});

$("#show-menu-13").click(function(){
	$("#show-menu-13 ul").slideToggle("slow", function(){});
	$(this).toggleClass("sub-active");

  $("#show-13").each(function (i) {
    if($(this).text() != "-"){
      $("#show-13").text("-");
    }else{
      $("#show-13").text("+");
    }
  });
});

$("#show-menu-16").click(function(){
	$("#show-menu-16 ul").slideToggle("slow", function(){});
	$(this).toggleClass("sub-active");

  $("#show-16").each(function (i) {
    if($(this).text() != "-"){
      $("#show-16").text("-");
    }else{
      $("#show-16").text("+");
    }
  });
});

});
