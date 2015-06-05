class Erro < ActionMailer::Base
	default :to=>'altherlg@lbv.org.br', :from=>'Erro <AppBoaVontade@lbv.org.br>', :address=>'10.0.32.64', :content_type=>"text/html", :subject=>"Erro no WebApp"

	def enviar( dsc_erro )
		#charset "utf-8"
		mail(:body=>dsc_erro)
	end
end