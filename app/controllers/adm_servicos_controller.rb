class AdmServicosController < ApplicationController
	
	before_filter :autentica	
	
	layout "admin"
	
	def index
		redirect_to edit_adm_servico_path(1)
	end
	
	def show
		@servico = AdmServico.find(params[:id])
	end
	
	def edit
		@servico = AdmServico.find(:first)
	end
	
	def update
		@servico = AdmServico.find(:first)
		@servico.attributes = params[:adm_servico]
		
		if @servico.save
			redirect_to adm_servico_path(@servico)
		else
			flash[:msg] = "Erro ao atualizar a secao 'servicos', verifique os erros."
			render :action => "edit"
		end
	end
	
	def autentica
		if session[:logged]
			true
		else
			redirect_to new_session_path
		end
	end

end
