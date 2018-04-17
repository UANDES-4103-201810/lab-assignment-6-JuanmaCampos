class RegistrationsController < ApplicationController
	def new
	
	end

	def create
		user = User.create!(user_params)
		

	    #complete this method
	end
	
	def user_params
      		params.require(:user, :name, :last_name, :email, :password, :phone)
		
    	end

	def is_user_registered
		
			

			
			
	
	end

	
	
end
