class GlbDominio < ActiveRecord::Base
	set_table_name  "glb.glb_dominio"
	#set_primary_keys :nme_tabela, :nme_coluna, :dsc_valor

	# Os conteudos que começam com '**' são considerados como inativo.
	EXPRESSAO_REGULAR_ITEM_INATIVO = /^[*]{2}/

	class << self
		def carregar( p_nme_tabela, p_nme_coluna, p_dsc_valor )
			find(
				:first,
				:conditions => ["nme_tabela = ? AND nme_coluna = ? AND dsc_valor = ?", 
					p_nme_tabela, p_nme_coluna, p_dsc_valor])
		end

		def carregar_lst_valor( p_nme_tabela, p_nme_coluna )
			find(
				:all,
				:conditions => ["nme_tabela = ? AND nme_coluna = ?", 
					p_nme_tabela.upcase, p_nme_coluna.upcase],
				:order => 'nmr_ordem')
		end
		
		def carregar_lst_valor_por_dsc_valor( p_nme_tabela, p_dsc_valor )
			find(
				:all,
				:conditions => ["nme_tabela = ? AND dsc_valor = ?", p_nme_tabela.upcase, p_dsc_valor.upcase],
				:order => 'nmr_ordem')
		end	
		
		
		def obter_dsc_conteudo_sem_inativacao( p_dsc_conteudo )
			p_dsc_conteudo.gsub(EXPRESSAO_REGULAR_ITEM_INATIVO, '') if p_dsc_conteudo
		end
	end
	
	def dsc_conteudo
		GlbDominio.obter_dsc_conteudo_sem_inativacao( self[:dsc_conteudo] )
	end
	
	def dsc_conteudo_original
		self[:dsc_conteudo]
	end
	
	def inativo?
		self[:dsc_conteudo] =~ EXPRESSAO_REGULAR_ITEM_INATIVO
	end
	
	protected
	def before_create
		self[:dsc_valor] = GlbDominio.maximum(:dsc_valor, :conditions => ['nme_tabela = ? AND nme_coluna = ?', self.nme_tabela, self.nme_coluna]).to_i + 1
	end
end
