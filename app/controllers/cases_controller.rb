class CasesController < ApplicationController
	def index
		@cases = AdmCase.find(:all)
		
		respond_to do |f|
			f.html
			f.xml	{render :xml => @cases}
		end
	end
end
