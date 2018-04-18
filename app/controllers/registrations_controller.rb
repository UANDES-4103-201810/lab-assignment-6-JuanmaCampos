class RegistrationsController < ApplicationController
	def new
	
	end

	def create
		user = User.create!(user_params)
		if user.save == true
		cookies.signed[:user_id] = user.id
		flash[:notice] = "Registered"
		redirect_to root_url
		
		else
		flash[:notice] = "Could not creat user. Try again"
		redirect_to registration_url
		end
		

	    #complete this method
	end
	
	def user_params
      		params.require(:registrations).permit(:name, :last_name, :email, :password, :phone)
		
    	end
	
end

	
	

