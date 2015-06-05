require 'open-uri'
require 'hpricot'
class HomeController < ApplicationController
	def index
	end

	def reportar_erro
		@dsc_erro = []
		@dsc_erro << "Data: " + Time.now.to_s
		@dsc_erro << "E-mail: "+params[:email]
		@dsc_erro << "Descrição erro: "+params[:dsc_erro]
		@dsc_erro << "<br/><br/>Dados tecnicos:"
		@dsc_erro << "HTTP_USER_AGENT: "+request.env["HTTP_USER_AGENT"].to_s
		@dsc_erro << "SERVER_NAME: "+request.env["SERVER_NAME"].to_s
		@dsc_erro << "AMBIENTE: "+Rails.env.to_s

		if params[:email].present? and params[:dsc_erro].present?
			Erro.enviar(@dsc_erro.join('<br/>')).deliver
		end
		#render :action => :index
		#render :js =>'alert("a")'
		render :text => 'yeah'
	end

	def contato
		arr_msn_erro=[]
		arr_msn_erro << '-Informe seu nome' if params[:nome].include?('nome') or !params[:nome].present?
		arr_msn_erro << '-Informe seu e-mail' if params[:email].include?('e-mail') or !params[:email].present?
		arr_msn_erro << '-Escreva seu recado' if params[:descricao].include?('escreva aqui seu') or !params[:descricao].present?
		raise arr_msn_erro.join('<br/>').html_safe if arr_msn_erro.present?
		
		dsc=''
		['nome','email','cidade','telefone'].each{|i| dsc+= params[i]+'<br/>'}
		params[:descricao] = dsc + '<br/><br/>' + params[:descricao]
		params[:assunto] = 'Contato com a Super RBV de Rádio pelo webApp'#GlbDominio.carregar('ENTRE_CONTATO','TPO_INTERACAO', params[:assunto]).dsc_conteudo
		Correio.enviar(params).deliver
		
		render :template => 'layouts/flash', :layout => false, :locals => {:style => 'e', :m=>'Seu recado foi enviado com sucesso!', :sucesso=>true }
	rescue => e
		render :template => 'layouts/flash', :layout => false, :locals => {:style => 'f', :m=>e.message }
	end

	def artigo
		link = "http://www.paivanetto.com/index.php/pt/artigo?cm=#{params[:cm]}&cs=#{params[:cs]}"
		doc = Hpricot(open(link))
		miolo = doc.search("//div[@class='foto left_']")
		#CGI::unescape(params[:titulo])
		render :json => {:miolo => miolo.html.html_safe, :titulo=>doc.search("//h1[@id='titulo']").html, :subtitulo=>doc.search("//div[@id='conteudoTxt']").search("//h2").html }.to_json
	end
end
