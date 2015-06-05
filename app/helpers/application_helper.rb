require 'open-uri'
require 'hpricot'
module ApplicationHelper
	def cabecalho_tag()
		%{
		<div data-role="header" style='background-image: url("assets/rodape2.png"); height: 78px;'>
			<h1>#{image_tag 'logo.png', :style=>'height: 66px;'}</h1>
		</div>
		}.html_safe
	end
	
	def voltar_tag(args={})
		args[:href] = (args[:href].nil?)? 'data-rel="back"' : "href=#{args[:href]}"
		%{
			<a #{args[:href]} data-direction="reverse" data-icon="arrow-l" data-theme="b" data-corners="true">Voltar</a>
		}.html_safe
	end

	def header_tag(args, &block)
		args[:cabecalho] = false if args[:cabecalho].nil?
		if args[:voltar] and args[:voltar]!=true
			div = %{
				<div style='padding-left: 15px;width: 100%;' data-role='header' data-theme='b' style='min-height: 41px;' data-position='inline'>
				#{voltar_tag({:href=>args[:voltar]})}
			}.html_safe
		else
			div="<div style='padding-left: 15px;width: 100%;' data-role='header' data-theme='b' data-position='inline'>#{voltar_tag}".html_safe
		end
		%{
			#{cabecalho_tag if args[:cabecalho]}
			#{div}
				#{block.call if block_given?}
			</div>
		}.html_safe
	end
	
	def radio_body(p_params)
		titulo = p_params[:titulo_resumido] || p_params[:titulo]
		flashvars = "url=#{p_params[:link]}&lang=auto&codec=mp3&volume=65&introurl=&autoplay=false&traking=true&jsevents=false&buffering=5&title=SRBV"
		
		p_params[:link_id] = 'seleciona_radio'+rand(1000).to_s
		render :inline => %{
	  <%= link_to p_params[:titulo].html_safe, "javascript:void(0)", :id=>p_params[:link_id], :onclick=>"selecionar('##{p_params[:id]}', '#{p_params[:link]}', '#{titulo}', '#{p_params[:link_id]}')" %>
			<div id="#{p_params[:id]}" class="ui-collapsible-content ui-body-d radios" aria-hidden="false" style="display: none;margin: 0px;">
				<script>
				if (swfobject.hasFlashPlayerVersion("1")){
					var str = '<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" width="329" height="21" bgcolor="#FFFFFF" type="application/x-shockwave-flash">'
					str += '<param name="movie" value="player/ffmp3.swf" />'
					str += '<param name="flashvars" value="#{flashvars}" />'
					str += '<param name="wmode" value="window" />'
					str += '<param name="allowscriptaccess" value="always" />'
					str += '<param name="scale" value="noscale" />'
					str += '<embed src="player/ffmp3.swf" flashvars="#{flashvars}" width="329" scale="noscale" height="21" wmode="window" bgcolor="#FFFFFF" allowscriptaccess="always" type="application/x-shockwave-flash" />'
					str += '</object>';
					document.write(str);
				}else{
					var str = '<audio controls style="width:100%;height:36px;">'
					str += '<source src="#{p_params[:link]}" type="audio/mpeg"></source>'
					str += '<p><a href="#{p_params[:link]}">#{p_params[:titulo]}</a></p>'
					str += '</audio>'
					document.write(str);
				}
				</script>
			</div>
		<!--
			<a onclick="apresentar('##{p_params[:id]}', this);" data-transition="slideup" data-rel="dialog" data-corners="false" data-shadow="false" data-iconshadow="true" data-inline="false" data-wrapperels="span" data-icon="plus" data-iconpos="false" data-theme="c">
			</a>
		-->
		}, :locals => { :p_params => p_params }
	end

	@@mais_players = 0
	def outros_players(p_idC)
		@@mais_players+=1
		id = "mais_players#{@@mais_players}"
		%{
		<a onclick="apresentar_elem('#{id}');"><p style='padding: 5px;'><span id='label_#{id}'>+</span>Players</p></a>
		<div id='#{id}' data-role="controlgroup" data-type="horizontal" style='display:none;margin:0px;' class='opcoes_players'>
			<a href='http://crosshost.com.br/players/listen.pls?idC=#{p_idC}' target='_blank' data-role="button"><%=image_tag 'icons/winamp32.png'-%></a>
			<a href='http://crosshost.com.br/players/radio.asx?idC=#{p_idC}' target='_blank' data-role="button"><%=image_tag 'icons/wmp32.png'-%></a>
			<a href='http://crosshost.com.br/players/real.ram?idC=#{p_idC}' target='_blank' data-role="button"><%=image_tag 'icons/rp32.png'-%></a>
			<a href='http://crosshost.com.br/players/ouvir.m3u?idC=#{p_idC}' target='_blank' data-role="button"><%=image_tag 'icons/itunes32.png'-%></a>
		</div>
		}.html_safe
	end
	
	# FIXME: Exluir este metodo. Nao utilizado!
	def jplayer_tag(p_params)
		%{
		<div id="jquery_jplayer_1" class="jp-jplayer"></div>
        <div id="jp_container_1" class="jp-audio">
			<div class="jp-type-single">
				<div class="jp-gui jp-interface" style='margin: 6px;'>
					<ul class="jp-controls" style='width: 15%;float:left;height:100%;'>
						<li><a href="javascript:;" class="jp-play" tabindex="1" id="jp_play">play</a></li>
						<li><a href="javascript:;" class="jp-pause" tabindex="1" id="jp_pause">pause</a></li>
						<!-- <li><a href="javascript:;" class="jp-stop" tabindex="1" id="jp_stop">stop</a></li> -->
					</ul>
					<div class='jp-centro' id='jp-centro' style='width: auto;float:left;height:40px;display: table;white-space: nowrap;'>
						<span style='display: table-cell;vertical-align: middle;'>#{p_params[:titulo]}</span>
					</div>
					<div class='jp-canto-dir' style='width: 10%;float:right;height:100%;margin-right: 10px;'>
						<ul class="jp-controls" style='float: right;'>
						<!--
							<li><a href="javascript:;" class="jp-mute" tabindex="1" title="mute">mute</a></li>
							<li><a href="javascript:;" class="jp-unmute" tabindex="1" title="unmute">unmute</a></li>
							<li><div class="jp-volume-bar"><div class="jp-volume-bar-value"></div></div></li>
							<li><a href="javascript:;" class="jp-volume-max" tabindex="1" title="max volume">max volume</a></li>
						-->
							<li><a href="javascript:;" class="jp-list" tabindex="1" title="Estações" onclick="location.href='#ouvir'">Estações</a></li>
						</ul>
					</div>
                </div>
                <div class="jp-no-solution">
					<span>Update Required</span>
                    To play the media you will need to either update your browser to a recent version or update your <a href="http://get.adobe.com/flashplayer/" target="_blank">Flash plugin</a>.
                </div>
            </div>
        </div>
		<script>
			$(document).ready(function() {
				$("#jquery_jplayer_1").jPlayer({
					ready: function(event) {
						$(this).jPlayer("setMedia", {
							mp3: "#{p_params[:link]}"
						});
					},
					swfPath: "http://www.jplayer.org/2.1.0/js",
					supplied: "mp3"
					//solution:"flash, html"
				});
			});
	  </script>
		}.html_safe	
		return ''
	end
	
	def new_jplayer_tag(p_params)
		%{
		<div id="jquery_jplayer_1" class="jp-jplayer"></div>
		<div id="jp_container_1" class="ui-corner-all novo_player menu">
			<a href="#" class="jp-play btn" id="jp_play">
				#{image_tag 'fw-play.png', :style=> 'margin: 18px;'}
			</a>
			<a href="#" class="jp-pause btn">
				#{image_tag 'fw-pause.png', :style=> 'margin: 18px;'}
			</a>			
			<a class="btn" href="http://www.facebook.com/superrbv" target="_blank">
				#{image_tag 'fw-thumb_facebook.png', :style=> 'margin: 18px;'}
			</a>
			<a class="btn" href="https://twitter.com/boavontade" target="_blank">
				#{image_tag 'fw-bird-twitter.png', :style=> 'margin: 18px;'}
			</a>
			<a class="btn" href="#outros">
				#{image_tag 'fw-mail.png', :style=> 'margin: 18px;'}
			</a>
			<a class="btn" href="#programacaoradio">
				#{image_tag 'fw-list.png', :style=> 'margin: 18px;'}
			</a>
		</div>
		<script>
			$(document).ready(function(){
				$("#jquery_jplayer_1").jPlayer({
					ready: function(event) {
						$(this).jPlayer("setMedia", {
							mp3: "#{p_params[:link]}"
						});
					},
					swfPath: "http://www.jplayer.org/2.1.0/js",
					supplied: "mp3",
					solution:"flash, html"
				});
			});
		</script>
		}.html_safe
	end	
	
	def tv_body(p_params)
		#p_params[:audio_tag]='video_tag_'+p_params[:id]
		render :inline => %{
			<div data-role="page" id="#{p_params[:id]}"  data-title="#{p_params[:titulo]}" data-menu-active='nav_assistir'>
				<%= header_tag(:voltar=>true){"<h1>#{p_params[:titulo]}</h1>"}%>
				<div data-role="content" style='overflow-x:visible;padding:0;width:100%;max-width:100%;min-width:100%;'>
					<script>
					if (swfobject.hasFlashPlayerVersion("1")){
						document.write('<iframe name="playerVideo" src="#{p_params[:link]}" width="325%" height="245" scrolling="no" frameborder="no"></iframe>');
					}else{
						document.write('<video controls="controls" id="<%=p_params[:audio_tag]%>" height="70%" width="100%" src="#{p_params[:iLink]}"></video>');
						$("#<%=p_params[:audio_tag]%>").height($(window).height()-15);
						$("#<%=p_params[:id]%>").live("pageshow", function (){
							$("#<%=p_params[:audio_tag]%>")[0].play();
						});
						$("#<%=p_params[:id]%>").live("pagehide", function (){
							$('#<%=p_params[:audio_tag]%>')[0].stop();
						});
					}
					</script>
				</div>
			</div>
		}, :locals => { :p_params => p_params.merge(:audio_tag=>'audio_tag'+rand(1000).to_s) }
	end
	
	def gerar_xml_programacao_tv
		doc = Hpricot.XML(open("http://www.boavontade.com.br/xml/mobile/geraProgramacao.php"))
		(doc/:programacao).each do |programacao|
			(programacao/:dia).each do |dia_semana|
				miolo = []
				striped=0
				(dia_semana/:programa).each do |programa|
					prog = (programa/:nome).innerHTML
					prog = prog.split(/\[|\]/)[2] if prog.include?('CDATA')
					hr, min, seg = programa.at('duracao').innerHTML.split(':')
					miolo << %{
						<li id='R00h30' class='#{(striped%2==0)? 'par' : ''}' onclick="location.href='#sinopsetv?p=#{prog.fonetica.downcase.gsub(' ', '')}'" style='cursor: pointer;display: block;'>
							<p style="margin: 10px;">
								#{prog}
							</p>
						</li>
					}
					arr=("<li id='R00h30'></li>")*((hr.to_i*2)-1)	if hr.to_i>0
					miolo << arr
					if hr.to_i>0 and min.to_i>0
						miolo << "<li id='R00h30'></li>"
					end					
					striped+=1
				end
				concat(corpo_programacao({:prefix=>'P', :id=>dia_semana.attributes['valor'].to_i, :titulo=>dia_semana.attributes['descricao'], :voltar=>'#programacaotv'}){ miolo.join('').html_safe }).html_safe
			end
		end	
	end
	
	def corpo_programacao(p_params, &block)
		id = p_params[:id]
		id_next = (id.next > 7 ? 1 : id.next)
		id_pred = (id.pred < 1 ? 7 : id.pred)
		render :inline => %{
			<div data-role="page" id="#{p_params[:prefix]}#{id}"  data-title="#{p_params[:titulo]}" data-theme="d">
				<% nav_bar = %{ 
					<div class="ui-btn-right" data-type="horizontal" data-role="controlgroup" style="top:0;">
						<a href="##{p_params[:prefix]}#{id_pred}" data-transition="slideup" data-role="button" data-icon="arrow-u" data-theme="a"  data-iconpos="notext" data-inline="true">Anterior</a>
						<a href="##{p_params[:prefix]}#{id_next}" data-transition="slidedown" data-role="button" data-icon="arrow-d" data-theme="a" data-iconpos="notext" data-inline="true">Próximo</a>
					</div>
				}.html_safe%>
				<%= header_tag(:voltar=>p_params[:voltar]){
					"<div class='ui-title'>#{p_params[:titulo]}</div>".html_safe+nav_bar
				}%>
				<div data-role="content" style='padding:0px;overflow: hidden;'>
					<ul id="colHora">
						<%=cabeca_programacao_tv%>
					</ul>
					<ul class='grade'>
						#{block.call if block_given? }
					</ul>
				</div>		
			</div>
		}, :locals => { :p_params => p_params }
	end	

	def cabeca_programacao_tv
		arr_horario = (0..23).to_a
		arr_hr_cheias = arr_horario.map{|i| i.to_s+"h"}
		arr_hr_meias = arr_horario.map{|i| i.to_s+"h<span class='meia_hora'>30</span>"}
		arr_result = [arr_hr_cheias, arr_hr_meias].transpose.flatten.map{|i| "<li>#{i}</li>"}
		result=[]
		arr_result.each_with_index{|item, i| (i%2==0)? result<<"<div class='hora_cheia'>"+item : result<<item+"</div>" }
		result.join.html_safe
	end

	def player_defatul_tag
		jplayer_tag({:id=>'radio1', :titulo => 'SRBV SP 1230AM', :link => 'http://servidor1.crossdigital.com.br:8058/;stream.nsv&type=mp3'})
	end

	def limpar_cdata(p_string)
		p_string = p_string.innerHTML
		if p_string.include?('CDATA')
			p_string = p_string.split(/\[|\]/)[2] 
		else
			p_string
		end
	#rescue
	#	''
	end
	def gerar_arr_programas_tv
		result = []
		doc = Hpricot.XML(open("#{RAILS_ROOT}/public/programas.xml"))
		(doc/:boavontadetv/:programas).each do |programas|
			(programas/:programa).each do |programa|
				# TODO:
				# Retornar uma array de hash e gerar o html na view
				hs_prog={}
				hs_prog.merge!( {:icone=> limpar_cdata(programa.at('icone'))} )
				hs_prog.merge!( {:nome => limpar_cdata( programa.at('nome') )} )
				hs_prog.merge!( {:descricao => limpar_cdata(programa.at('descricao')) } )
				result << hs_prog
			end
		end
		return result
	end

	def nme_programa_tv_corrente_tag
		doc = Hpricot.XML(open("http://www.boavontade.com.br/xml/mobile/geraProgramacao.php"))
		doc_dia = (doc/:programacao).search("dia[@valor*=#{Date.current.wday+1}]")
		dta_hj = DateTime.current.strftime("%d-%m-%Y")
		(doc_dia/:programa).each do |programa|
			hra_inicio = programa.at('hra_inicio').innerHTML
			hra_fim = programa.at('hra_fim').innerHTML
			hra_inicio = DateTime.strptime("#{dta_hj} #{hra_inicio}", '%d-%m-%Y %H:%M:%S')
			hra_fim = DateTime.strptime("#{dta_hj} #{hra_fim}", '%d-%m-%Y %H:%M:%S')
			#Hora errada para o metodo DateTime.current
			#if DateTime.current.between?(hra_inicio, hra_fim)
			if Time.now.hour.between?(hra_inicio.hour, hra_fim.hour) and Time.now.min.between?(hra_inicio.min, hra_fim.min)
				nme_programa = (programa/:nome).innerHTML
				nme_programa = nme_programa.split(/\[|\]/)[2] if nme_programa.include?('CDATA')
				@nme_programa_corrente = nme_programa
			end
		end
		return @nme_programa_corrente
	end
	def rodape
		%{
		<div data-role="footer" class="ui-bar" style='padding: 0px;position: absolute;bottom: 0;'>
			<div data-role="navbar">
				<a href="#news" data-role="button" data-icon="star" style='width: 20%; border:0px; padding:0px !important; display:block;float:left;'>
					News
				</a>
				<a href="#aovivo" data-role="button" data-icon="star" style='width: 20%; border:0px; padding:0px !important; display:block;float:left;'>
					Assista
				</a>
				<a href="#audio" data-role="button" data-icon="arrow-u" style='width: 20%; border:0px; padding:0px !important; display:block;float:left;'>
					Ou&ccedil;a
				</a>
				<a href="#" data-role="button" data-icon="check" style='width: 20%; border:0px; padding:0px !important; display:block;float:left;'>
					Mensagem
				</a>
				<a href="#" data-role="button" data-icon="plus" style='width: 20%; border:0px; padding:0px !important; display:block;float:left;'>
					Mais
				</a>
			</div>		
		</div>		
		}.html_safe
	end
	def gerar_arr_artigos
		result = []
		doc = Hpricot.XML(open("http://www.boavontade.com/xml/mobile/listaArtigosPaivaNetto.php"))
		(doc/:artigos).each do |a|
			(a/:artigo).each do |artigo|
				# TODO:
				# Retornar uma array de hash e gerar o html na view
				hs_prog={}
				hs_prog.merge!( {:titulo=> limpar_cdata(artigo.at('titulo'))} )
				hs_prog.merge!( {:link => limpar_cdata( artigo.at('link') )} )
				hs_prog.merge!( {:jornais => (artigo/:jornais).map{|i| limpar_cdata(i.at(:jornal))}.join(',') } )
				result << hs_prog
			end
		end
		return result
	end	
end