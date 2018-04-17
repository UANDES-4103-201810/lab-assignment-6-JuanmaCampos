class SessionsController < ApplicationController
	def new
	end

	def create
		user = User.find_by(email: params[:session][:email])
		sespassword = params[:session][:password]
		if user && user.password == sespassword
			session[:user] = user
			flash[:notice] = "Logged in"
			#Sale 2 veces
			cookies.permanent.signed[:user_id] = user.id
			redirect_to user_path(user)
		else
			flash[:notice] = "Error, credentials invalid"
			redirect_to root_path
		end
	end

	def destroy
		#complete this method
	end
end
