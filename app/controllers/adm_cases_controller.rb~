class AdmCasesController < ApplicationController

	before_filter :autentica
	
	uses_tiny_mce :options => {
                              :theme => 'advanced',
                              :theme_advanced_resizing => true,
                              :theme_advanced_resize_horizontal => false,
                              :plugins => %w{ table fullscreen }
                            }
			    
	layout "admin"
	
	def index
		@cases = AdmCase.find(:all)
	end
	
	def show
		@case = AdmCase.find(params[:id])
	end
	
	def new
		@case = AdmCase.new
	end

	def create
		@case = AdmCase.create(params[:adm_case])
		
		if @case.save
			flash[:msg] = "O item foi criado com sucesso"
			redirect_to adm_case_path(@case)
		else
			flash[:msg] = "Erro ao criar o item. Verifique os erros."
			render :action => "new"
		end
	end
	
	def edit
		@case = AdmCase.find(params[:id])
	end
	
	def update
		@case = AdmCase.find(params[:id])
		@case.attributes = params[:adm_case]
		
		if @case.save
			redirect_to adm_case_path(@case)
		else
			flash[:msg] = "Erro ao criar o item. Verifique os erros"
			render :action => "edit"
		end
	end 
	
	def destroy
		@case = AdmCase.find(params[:id])
		
		if @case.destroy
			flash[:msg] = "O item foi deletado"
			redirect_to "/adm_cases/"
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
