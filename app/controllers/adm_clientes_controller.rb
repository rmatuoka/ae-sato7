class AdmClientesController < ApplicationController
	
	before_filter :autentica	
	layout "admin"
	
	def index
		@clientes = AdmCliente.find(:all)
	end
	
	def show
		@cliente = AdmCliente.find(params[:id])
	end
	
	def new
		@cliente =AdmCliente.new
	end
	
	def create
		@cliente = AdmCliente.create(params[:adm_cliente])
		
		if @cliente.save
			flash[:msg] = "A noticia foi criada com sucesso"
			redirect_to adm_cliente_path(@cliente)
		else
			flash[:msg] = "Erro ao inserir a noticia, verifique os erros."
			render :action => "new"
		end
	end
	
	def edit
		@cliente = AdmCliente.find(params[:id])
	end
	
	def update
		@cliente = AdmCliente.find(params[:id])
		@cliente.attributes = params[:adm_cliente]
		
		if @cliente.save
			redirect_to adm_cliente_path(@cliente)
		else
			flash[:msg] = "Erro ao atualizar a noticia, verifique os erros."
			render :action => "edit"
		end
	end
	
	def destroy
		@cliente = AdmCliente.find(params[:id])
		
		if @cliente.destroy
			flash[:msg] = "A noticia foi deletada"
			redirect_to "/adm_clientes/"
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
