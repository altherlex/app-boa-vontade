class LocalizacoesController < ApplicationController
	def index
	end
	
	def automatico
	end
	
	def manual
	end
	
	def localizar
	end
	
	def show
		@crm_igreja = CrmIgreja.find params[:id].to_i
	end
	
end
