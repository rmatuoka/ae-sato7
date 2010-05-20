class ContatosController < ApplicationController
	layout "application2"
	
	def index
		redirect_to new_contato_path
	end
	
	def new
		@contato = Contato.new
	end
	
	def create
		@contato = Contato.create(params[:contato])
		
		if @contato.save
			if request.post?

				@corpo = "<b>Nome: </b>#{params[:nome]}<br />
				<b>E-mail: </b>#{params[:email]}<br />
				<b>Mensagem: </b>#{params[:mensagem]}<br />"

				#se precisar os parametros s�o Email.deliver_padrao(corpo, "Assunto",email para&nbsp;&nbsp; #enviar(destino), email para resposta)

				Email.deliver_imprensa(@corpo, "Contato pelo site")
				
				flash[:msgInterna] = "Mensagem enviada com sucesso!"
				redirect_to contato_path(@contato)
			
			end
			
			
		else
			flash[:msgInterna] = "Erro ao enviar a mensagem!"
			render :action => "new"
		end
	end
end
