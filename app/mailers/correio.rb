class Correio < ActionMailer::Base
	#info@boavontade.com
	default :to=>'info@boavontade.com', :from=>'SRBV-Fale conosco <AppBoaVontade@lbv.org.br>', :address=>'10.0.32.64', :content_type=>"text/html", :subject=>"Contato a Super RBV"

	def enviar( params )
		#charset "utf-8"
		mail(:body=>params[:descricao], :subject=>params[:assunto])
	end
end