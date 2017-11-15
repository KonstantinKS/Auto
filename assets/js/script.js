$(function(){
	
});

$(window).on('load', function () {
	
	$('#notice').ma5slider();	
	var Interval = setInterval(prevNotification, 5000);
	
});

function prevNotification(){
	
  $('#notice').ma5slider('goToPrev');
  
}





    
