function set_nav(p_img_ativo){
	var el=$(p_img_ativo);
	$('#mobile_menu img').css('opacity', '0.38');
	try{
		el.css('opacity', '1.00');
	}catch(e){};
};		
/* Marcando a botão menu lateral da tela */
$('div[data-role="page"]').live('pageshow', function(){
	//show_menu_modal(false);
	var el = $(this).attr('data-menu-active');
	if (el)
		set_nav( $('#'+el) );
});

$('#reportar_erro').submit(function() {
	if ( $('#email').val()=='' || $('#dsc_erro').val()=='' )
		return false;

	$.ajax({
		url: $('#reportar_erro').attr('action'),
		data:$('#reportar_erro').serialize(),
		contentType: "application/x-www-form-urlencoded;charset=ISO-8859-1",
		success: function(data) {
			//$('#notificacao').html(data);
			$('body').append("<div id='notify' class='ui-loader ui-overlay-shadow ui-body-e ui-corner-all' style='display:block; opacity:0.96; top:277px;'><h1>Enviado com sucesso!</h1></div>");
		  $('#email').val('');
		  $('#dsc_erro').val('');
		},
		error: function(data) {
			$('body').append("<div id='notify' class='ui-loader ui-overlay-shadow ui-body-e ui-corner-all' style='display:block; opacity:0.96; top:277px;'><h1>Não foi possível enviar.</h1></div>");
		}
	});
  setTimeout(function(){$('#notify').remove()}, 5500);
  return false;
});
//*************************** on load ****************************************
$(document).ready(function(){
	$('#home').live('pageinit', function() {
		setTimeout(function(){addToHome.show()}, 5000);
	});

	/* Configurando o evento swipe horizontal */
	$.event.special.swipe.horizontalDistanceThreshold=100;

	//top: 277px;
	$('body').ajaxStart(function() {
		$('body').append('<div id="load-ajax" class="ui-loader ui-body-a ui-corner-all" style="display: block;"><span class="ui-icon ui-icon-loading spin"></span><h1>carregando</h1></div>');
	});

	$('body').ajaxStop(function() {
		$('#load-ajax').remove();
	});

	//fn_minizar_player(true);
	/* Descricao do form */
	$('.com_label').each(function () {
		fn_com_label( $(this) );
		$(this).blur();
	});
	//$("#footer").css("position", "static"); };
	/*$(window).scroll(function() {
		$('.bottombar').css('bottom', '0px');
		$('.bottombar').css('top', $(document).height()-53 );
		myScroll = new iScroll('yield');
	});*/	

	$('#mobile_menu img').bind('click', function(){set_nav(this);});
	$('body>[data-role]="page"').css('overflow', 'hidden');

	/* Opcao de deslizar o dedo pra direita pra abrir o menu lateral */
	$('div[data-role="page"]').bind("swiperight",function(event) {
		show_menu_modal(true);
	});
	$('.mobile_menu_modal').bind("swipeleft",function(event) {
		show_menu_modal(false);
	});
});	

//Seting defatul page trasition
$("div[data-role=page]").bind("pagebeforeshow", function (e, data) {
	$.mobile.changePage.defaults.transition = 'slide';
});

$('.home').live("pageshow", function (){
	var center_local = function(){
		margin = (($(window).height()-$('.center:visible').height())/2);
		return ((margin <= 0)? 0 : margin);
	};
	$(function(){ $('div.page_menu').css('margin-top', center_local()+'px') });
});

/* Solucao para renderizacao do background no iPhone. Antes ficava com o bottom em branco */
$(window).resize(function(){
	var center_local = function(){
		margin = (($(window).height()-$('.center:visible').height())/2);
		return ((margin <= 0)? 0 : margin);
	};	
	$('div.page_menu').css('margin-top', center_local()+'px');
});

$(window).bind('orientationchange', function(e){
	$(window).trigger('resize');
});
//*************************** end on load **************************************

function enviar_para(p_local){
	location.href=p_local;
};
//*************************** video load ****************************************
function carregar_videos(ul_id, arr_canais, args){
	var ul_node = [];

	var arr_video = [];
	var config = {alt:'json', format:6, 'max-results':5, orderby:'published', 'start-index':1};
	$.each(arr_canais, function(index, value){
		var nmr_videos = $('#'+ul_id+'>li[author='+value+']:not(.carregar_mais)').size();
		nmr_videos = {'start-index':nmr_videos+1}
		$.extend(config, args);
		$.extend(config, nmr_videos);
		jQuery.merge(arr_video, invoke_video(value, config));
	});
	jQuery.unique(arr_video).reverse();
	for (var i = 0; i < arr_video.length; i++){
		var video = arr_video[i];
		var id_video = video.media$group.media$player[0].url.split('v=')[1].split('&')[0];
		ul_node.push('<li author=', video.author[0].name.$t, '>');
		//video.media$group.media$content[0].url; video.media$group.media$player[0].url; video.media$group.media$description.$t
		ul_node.push('<a href="javascript:void(0)" onclick=enviar_para("#lbvcultural2?v="+"', id_video, '"); style="padding:0px">');
		ul_node.push('<img class="icon-youtube" src=', video.media$group.media$thumbnail[0].url, '>', '</img>');
		ul_node.push("<h1 style='font-size: 12px;white-space: normal;'>", video.title.$t, '</h1>');
		ul_node.push("<p style='font-size: 9px;white-space: normal;'>por ", video.author[0].name.$t, '</p>');
		ul_node.push('</a>');
		ul_node.push('</li>');
	}
	$('.carregar_mais').remove();
	//if ((arr_video.length!=0) || (args.q == undefined))
	if (arr_video.length!=0)
		ul_node.push("<li class='carregar_mais'><a><h1>Carregar mais</h1></a></li>");
	$('#'+ul_id).append( ul_node.join('') );
	$('#'+ul_id).listview('refresh');			
	if (arr_video.length!=0)
		$('.carregar_mais:visible').click(function(){carregar_videos(ul_id, arr_canais,args)});
};
function invoke_video(user, args){
	$.ajaxSetup({async: false});
	var arr=[];
	if (args.q)
		args={q:args.q, alt:args.alt, format:args.format};
	$.getJSON('http://gdata.youtube.com/feeds/users/'+user+'/uploads', args,
	function(data){
		arr = data.feed.entry;
	});
	return (typeof arr == "undefined")? [] : arr;
};
//*************************** video load end ****************************************

function show_menu_modal(p_ex){
	var ex = (typeof p_ex=="undefined")? ($('.mobile_menu_modal:visible').size()==0) : p_ex;
	if (ex){
		$('body').addClass('animate');
		$('.mobile_menu_modal').show();	
		$('div[data-role="page"]').addClass('animate');
		$('div[data-role="page"]').css('opacity', '0.3');
	}else{
		$('body').removeClass('animate');
		$('.mobile_menu_modal').hide();
		$('div[data-role="page"]').removeClass('animate');
		$('div[data-role="page"]').css('opacity', '1');
	}
}

$('#lbvcultural2').live('pageshow', function() {
	var src_video = location.href;
	if (location.href.split('?').length >= 2){
		$('#frm_video').attr('src', 'http://www.youtube.com/embed/'+src_video.split('v=')[1]+'?autoplay=1' );
	}
});	

function fn_limpar_campos_com_label(){
	$('form > input').val('');
	$('form > textarea').val('');
	$('.com_label').each(function () {
		fn_com_label( $(this) );
		$(this).blur();
	});	
}
function fn_com_label(p_elem){
	var  el = $(p_elem);
	var label = $(el).attr('label');
	el.blur(function() {
		if (el.val()==""){
			el.val(label);
			el.css('color', 'gray');
		}
	});
	el.focus(function() {
		if (el.val()==label){
			$(this).val('');
			el.css('color', '#333333');
		}
	});
};

function fn_minizar_player(p_minimizar){
	var p_minimizar = (typeof p_minimizar=="undefined" ? ($('.ui-page').css('margin-top')=='52px') : p_minimizar)
	if ( p_minimizar ){
		/*$('#footer').css('height', '25px');
		$('#wrapper').css('bottom', '0px');
		*/
		$('#com-player').show();
		$('#sem-player').hide();
		$('#jp_container_1').hide();
		$('.ui-page').css('margin-top', '0px');
		$('#header').css('height', '0px');
	}else{
		/*
		$('#footer').css('height', '82px');
		$('#wrapper').css('bottom', '51px');
		*/
		$('#com-player').hide();
		$('#sem-player').show();
		$('#jp_container_1').show();
		$('.ui-page').css('margin-top', '52px');
		$('#header').css('height', '51px');
	}	
}

/* Invoca player */
function selecionar(p_id, p_src, p_titulo, p_el){
	/*
	fn_minizar_player(false);
	elem_root = $(p_id).closest('li.ui-btn');
	elem_root.siblings('.ui-li-has-alt').removeClass('ui-btn-up-b').addClass('ui-btn-up-c').attr('data-theme', 'c');
	elem_root.removeClass('ui-btn-hover-c').removeClass('ui-btn-up-c').addClass('ui-btn-up-b').attr('data-theme', 'b');
	*/
	$("#jquery_jplayer_1").jPlayer("setMedia", { mp3: p_src});
	$("#jquery_jplayer_1").jPlayer('load');
	$("#jquery_jplayer_1").jPlayer('stop');
	$("#jquery_jplayer_1").jPlayer('play');
	$("#jquery_jplayer_1").jPlayer('play');
	$('#jp_play').click();
	//$('#jp-centro').html( p_titulo );
	$('.display_ouvir>.subtitle').html(p_titulo);
	$('ul.lista_radios a').css('color', '#FFFFFF');
	$('ul.lista_radios a').css('text-shadow', '0 0 0');
	var _link = $('#'+p_el);
	_link.css('text-shadow', '0 0 8px rgba(255, 255, 255, 0.7');
	_link.css('color', '#777777');
}

function tocar(id_player, id_control){
	var player = $(id_player)[0];
	var control = $(id_control);
	if (control.hasClass('playing')){
		control.removeClass('playing');
		control.addClass('stoped');
		$("#jquery_jplayer_1").jPlayer('play');
	}else{
		control.removeClass('stoped');
		control.addClass('playing');
		$("#jquery_jplayer_1").jPlayer('stop');
	}
}

function apresentar(id, el){
	$('.radios').hide('fast');
	if ($(id).is(":visible")){
		$(id).hide('slow');
		$(el).find(".ui-icon").removeClass("ui-icon-minus").addClass("ui-icon-plus");
	}else{
		$(id).show('slow');
		$(el).find(".ui-icon").removeClass("ui-icon-plus").addClass("ui-icon-minus");
	}
};

function apresentar_elem(p_id){
	id = '#'+p_id;
	if ($(id).is(":visible")){
		$('#label_'+p_id).html('+');
		$(id).hide('slow');
	}else{
		$('#label_'+p_id).html('-');
		$(id).show('slow');
	}
};

/* Twitter*/
function feedTwitter(){
	new TWTR.Widget({
		version: 2,
		type: 'profile',
		rpp: 4,
		interval: 30000,
		width: '100%',
		height: 300,
		theme: {
			shell: {
				background: '#0098c6',
				color: '#0a090a'
			},
			tweets: {
				background: '#ffffff',
				color: '#0a090a',
				links: '#0084b4'
			}
		},
		features: {
			scrollbar: false,
			loop: false,
			live: false,
			behavior: 'all'
		}
	});
}
/* end Twitter*/

function fn_enviar_contato(){
	$.ajax({
		url: 'home/contato',
		data:$('#frm_contato').serialize(),
		contentType: "application/x-www-form-urlencoded;charset=ISO-8859-1",
		success: function(data){ $('#notificacao').html(data); }
	});
}

/* ********************* FACEBOOK *********************** */
function fb_post_msg(){
	FB.ui(
	  {
	   method: 'feed',
	   //name: 'appBoaVontade',
	   name: 'Boa Vontade para o seu dispositivo m&oacute;vel',
	   //caption: 'Ouca e assista a comunicação 100% Jesus onde estiver!',
	  /*
	   description: (
	     	'To curtindo aqui o Portal Boa Vontade para dispositivos moveis!' +
	      'Demoro!!!!! '
	   ),
		*/
	   link: 'http://app.boavontade.com',
	  // picture: 'http://libwebdes0.boavontade.com/assets/logo.png'
	  },
	  function(response) {
	  	/*
	    if (response && response.post_id) {
	      alert('Post was published.');
	    } else {
	      alert('Post was not published.');
	    }
	    */
	  }
	);
}
function fb_check_ouvindo(){
	FB.ui(
	  {
	   method: 'feed',
	   name: 'Boa Vontade para o seu dispositivo m&oacute;vel',
	   //caption: 'Ouca e assista a comunicação 100% Jesus onde estiver!',
	   description: (
	     	'Eu estou na audi&ecirc;ncia da Super RBV '+$('#rotulo_estacao_radio').text() + 
	      '. A comunica&ccedil;&atilde;o 100% Jesus!'
	   ),
	   link: 'http://app.boavontade.com',
	   //picture: 'http://libwebdes2.boavontade.com/assets/profile/60x60-logo_srbv.png'
	   /* Alterar resolução. Esta está muito pesada para celulares */
	   picture: 'http://libweb.boavontade.com/assets/profile/logo_srbv.png'
	  }
	);
}
function fb_check_assistindo(){
	FB.ui(
	  {
	   method: 'feed',
	   name: 'Boa Vontade para o seu dispositivo m&oacute;vel',
	   //caption: 'Ouca e assista a comunicação 100% Jesus onde estiver!',
	   description: (
	     	'Eu estou na audi&ecirc;ncia da Boa Vontade TV. ' +
	      'A comunica&ccedil;&atilde;o 100% Jesus!'
	   ),
	   link: 'http://app.boavontade.com',
	   //picture: 'http://libwebdes2.boavontade.com/assets/profile/60x60-logo_srbv.png'
	   /* Alterar resolução. Esta está muito pesada para celulares */
	   picture: 'http://libweb.boavontade.com/assets/profile/logo_boavontadetv.png'
	  }
	);
}
function convide_seus_amigos(){
	FB.ui({
		method: 'send', //Este método não tem suporte para mobile
		name: 'Boa Vontade para o seu dispositivo m&oacute;vel',
		link: 'http://app.boavontade.com',
	});
}

function fb_login(){
	console.log('Inicio fb_login initialization');
	FB.getLoginStatus(function(response){
		if (response.status === 'connected'){
			// connected
			//$('').html('Logout');
			//$('#fb-login-logout').attr('src', "http://libwebdes.boavontade.com/assets/fb-logout.png");
			$('#fb-login-logout').hide();
			$('#fb-login-logout').click(function(){
				FB.logout( function(response){ fb_login() });
			});
			FB.api('/me', function(response) {
				$('#fb-bem-vindo_personalizado').html('Ol&aacute;, '+response.name);
			});
		} else if (response.status === 'not_authorized') {
			// not_authorized
		} else {
			// not_logged_in
			//$('#fb-login-logout').html('Login');
			//$('#fb-login-logout').attr('src', "http://libwebdes.boavontade.com/assets/fb-login.png");
			$('#fb-login-logout').show();
			$('#fb-login-logout').click(function(){ 
				FB.login(function(response){ fb_login(); });
			});
			$('#fb-bem-vindo_personalizado').html('');
		}
	});
	console.log('fim fb_login initialization');
}
/* ********************* END FACEBOOK *********************** */