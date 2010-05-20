class ClientesController < ApplicationController
	layout "application2"
	
	def index
		@clientes = AdmCliente.find(:all)
	end
end
