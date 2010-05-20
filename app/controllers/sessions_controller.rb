class SessionsController < ApplicationController
  layout "admin"
  
  def index
	@usuarios = Usuario.find(:all)
  end
  
  def new
	  
  end
  
  def show
	
  end

  def create
	@usuario = Usuario.find(:first, :conditions => ['login = ? AND password = ?', params[:login], params[:password]])
	
	if @usuario
		session[:logged] = true
		session[:login] = @usuario.login
		redirect_to noticias_path
	else
		flash[:msg] = "Usuário e/ou senha inválidos."
		render :action => "new"
	end
  end

  def destroy
	session[:logged] = false
	redirect_to new_session_path
  end

end
