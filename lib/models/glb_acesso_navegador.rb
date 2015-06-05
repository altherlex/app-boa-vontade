class GlbAcessoNavegador < ActiveRecord::Base
	set_table_name 'GLB.GLB_ACESSO_NAVEGADOR'
	
	class << self
		def logger( requisicao )
			p_dsc_naveg = requisicao["HTTP_USER_AGENT"]
			GlbAcessoNavegador.connection.execute("INSERT INTO GLB.GLB_ACESSO_NAVEGADOR VALUES('#{p_dsc_naveg}')")
		rescue 
			false
		end
	end
end

=begin
create table GLB.GLB_ACESSO_NAVEGADOR(
	dsc_navegador varchar(500) not null
) IN TSDCRM01 INDEX IN TSICRM01;

ALTER TABLE GLB.GLB_ACESSO_NAVEGADOR ADD CONSTRAINT PK_ACSNAV PRIMARY KEY (dsc_navegador);
=end