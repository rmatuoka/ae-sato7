class HomeController < ApplicationController
	def index
		@noticias = Noticia.find(:all, :order => 'id DESC' , :limit => 3)
	end
	
	def new
		
	end
	
	def create
		@usuario = Usuario.find(:first, :conditions => ['login = ? AND password = ?', params[:login], params[:password]])
	
		if @usuario
			session[:logged] = true
			session[:login] = @usuario.login
			redirect_to noticias_path
		else
			flash[:msg] = "Usuário e/ou senha inválidos."
			redirect_to home_path
		end
	end
	
	def destroy
		session[:logged] = false
		redirect_to home_path
	end
end
