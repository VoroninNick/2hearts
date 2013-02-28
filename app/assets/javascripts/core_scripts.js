$(document).ready(function() {
  
  //Paralax main header banner
  $('#paralax .parallax-layer').parallax({
    mouseport: $('#paralax')
  });
  
  $('#back_top').click(function () {
    $("body").animate({ scrollTop: 0 }, 1000);
    //$("body").effect("bounce", { direction:'up', times:4, distance:31 }, 450);
    return false;
});

});