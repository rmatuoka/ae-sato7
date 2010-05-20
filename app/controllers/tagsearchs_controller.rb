class TagsearchsController < ApplicationController
	layout "application2"
	
	def show
		@tagsearchs = Noticia.tagged_with(params[:id])
	end
end
