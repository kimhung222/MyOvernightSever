class SessionsController < ApplicationController
	def new
		user = User.new
	end
	def create
		user = User.find_by(params[:id][:email])
		if user && user.authenticate(params[:session][:password])
			log_in(user)
			redirect_to(user)
		else
			flash.now[:danger] ='Invalid email/password'
			render 'new'
		end
	end
	def destroy
	end
end
