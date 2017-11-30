$(function(){
	
});

$(window).on('load', function () {
	
	$('#notice').ma5slider();	
	//var Interval = setInterval(prevNotification, 5000);	
	
	$('#notice').on('ma5.activeSlide', function (event, slide) {		
		var sl = $("div#notice div.slides");
		var activSl = $(sl).find('.slide--active');        
		var params = { slug: activSl.attr('id') };		
		$.post('notice/notice_counter', params, function(data) {			
            if (data == 'notice_denied') {
				alert('Нет такого уведомления');
			} else {
				$(activSl).children('p.counter').children('span').text(data);				
			}			
        });		
    });	
	
});

$(document).ready(function(){   

    $('#account').on('click', '#signIn', function(e) {
		e.preventDefault();
        var params = $('#login-form').serialize();
		console.log(params);    
        $.post('user/ajax_login', params, function(data) {
			console.log(data);		     
			if(data == 'denied') {
                alert('Неправильно введены логин или пароль');
            } else {
                $('#login-form').remove();
                $('#account').append(data);
            }			
        });
    });
	
	$('#account').on('click', '#logout', function(event) {
		event.preventDefault();
        $.post('user/ajax_logout', {logout : true}, function(data) {
			console.log(data);
            $('#userWidget').remove();
            $('#account').append(data);
        });
    });
	
	$('#account').on('click', '#checkIn', function(e) {
		e.preventDefault();
        var params = $('#login-form').serialize();
		console.log(params);      
        $.post('user/ajax_check', params, function(data) {
			console.log(data);          
			if (data == 'check_denied') {
				alert('Неправильно введены логин или пароль либо данный логин уже зарегистрирован');
			} else {
				$('#login-form').remove();
				$('#account').append(data);
			}
        });
    });

});

function prevNotification(){	
  $('#notice').ma5slider('goToPrev');  
}





    
