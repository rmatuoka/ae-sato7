class AdmContatosController < ApplicationController
	
	before_filter :autentica	
	layout "admin"
	
	def index
		@contatos = Contato.find(:all)
	end
	
	def show
		@contato = Contato.find(params[:id])
	end
	
	def destroy
		@contato = Contato.find(params[:id])
		
		if @contato.destroy
			flash[:msg] = "A mensagem foi deletada"
			redirect_to "/adm_contatos/"
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
