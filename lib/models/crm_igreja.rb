class CrmIgreja < ActiveRecord::Base
	set_table_name 'CRM.CRM_IGREJA'
	set_primary_key :cdg_igreja

	def local
		"#{self.dsc_endereco}, #{self.nmr_numero} - #{self.dsc_localidade} #{self.nmr_telefone}"
	end

	def geo_local
		"#{self.nmr_numero} #{self.dsc_endereco}, #{self.dsc_bairro} - #{self.dsc_localidade}"
	end
	
	class << self
		def estados_agrupadas
			itens = CrmIgreja.all.group_by(&:dsc_estado).inject(Hash.new(0)) do |hs, (nme_grupo, localidade)|
				hs[nme_grupo] = localidade.map{|i| [i.dsc_localidade, i.dsc_localidade]}
				hs
			end	
			itens
		end
	end	
end