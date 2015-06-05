class SisSmtp < ActionMailer::Base
	def enviar( params )
		#ActionMailer::Base.raise_delivery_errors = false

		ActionMailer::Base.smtp_settings = {
			:address          => '10.0.32.64',
			:port             => 25,
			:domain           => 'emarketing.lbv.org.br',
			:user_name        => nil,
			:password         => nil,
			:authentication   => nil
		}

		#recipients ["info@boavontade.com", 'altherlg@lbv.org.br']
		recipients "altherlg@lbv.org.br"
		#recipients "info@boavontade.com"
		from "[RD APP]Fale conosco <apprd@lbv.org.br>"
		
		subject params['assunto']
		content_type "text/html"
		#content_type "text/plain"
		charset "utf-8"
		body params['descricao']
	end
end