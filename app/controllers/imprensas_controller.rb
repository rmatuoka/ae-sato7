class ImprensasController < ApplicationController
	layout "application2"
	
	def index
		redirect_to new_imprensa_path
	end
	
	def new
		@imprensa =Imprensa.new
	end
	
	def create
		@imprensa = Imprensa.create(params[:imprensa])
		
		if @imprensa.save
			if request.post?

			corpo = "<b>Nome: </b>#{params[:nome]}<br />
			<b>E-mail: </b>#{params[:email]}<br />"

			#se precisar os parametros são Email.deliver_padrao(corpo, "Assunto",email para&nbsp;&nbsp; #enviar(destino), email para resposta)

			Email.deliver_imprensa(corpo, "Novo Cadastro de Imprensa", params[:email])
			
			flash[:msg] = "Cadastro efetuado com sucesso."
			
			redirect_to new_imprensa_path
			end
		else
			flash[:msg] = "Erro ao se cadastrar, verifique os erros."
			render :action => "new"
		end
	end
end
