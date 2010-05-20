class LerNoticiasController < ApplicationController
	layout "application2"
	
	def index
		@noticias = Noticia.find(:all)
	end
	
	def show
		@noticia = Noticia.find(params[:id])
	end
end
