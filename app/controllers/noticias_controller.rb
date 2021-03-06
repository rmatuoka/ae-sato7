class NoticiasController < ApplicationController
	
	before_filter :autentica
	
	uses_tiny_mce :options => {
                              :theme => 'advanced',
                              :theme_advanced_resizing => true,
                              :theme_advanced_resize_horizontal => false,
                              :plugins => %w{ table fullscreen }
                            }

	layout "admin"
	
	def index
		@noticias = Noticia.find(:all)
	end
	
	def show
		@noticia = Noticia.find(params[:id])
	end
	
	def new
		@noticia =Noticia.new
	end
	
	def create
		@noticia = Noticia.create(params[:noticia])
		#@noticia.tag_list []
		@noticia.tag_list = params[:noticia][:tag_list]

		
		if @noticia.save
			#flash[:msg] = "A noticia foi criada com sucesso"
			redirect_to noticia_path(@noticia)
		else
			#flash[:msg] = "Erro ao inserir a noticia, verifique os erros."
			render :action => "new"
		end
		
		
	end
	
	def edit
		@noticia = Noticia.find(params[:id])
	end
	
	def update
		@noticia = Noticia.find(params[:id])
		@noticia.attributes = params[:noticia]
		#@noticia.tag_list = params[:tags]
		
		if @noticia.save
			redirect_to noticia_path(@noticia)
		else
			flash[:msg] = "Erro ao atualizar a noticia, verifique os erros."
			render :action => "edit"
		end
	end
	
	def destroy
		@noticia = Noticia.find(params[:id])
		
		if @noticia.destroy
			#flash[:msg] = "A noticia foi deletada"
			redirect_to "/noticias/"
			#redirect_to noticia_path(@noticia)
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

