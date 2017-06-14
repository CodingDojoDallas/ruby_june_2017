class UsersController < ApplicationController
	before_action :user_authorized, only: [:success]
	before_action :user_logged_in, only: [:new]

	def new

	end

	def create
		user = User.create(user_params)
		if user.valid?
			session[:user_id] = user.id
			redirect_to '/success'
		else
			flash[:errors] = user.errors.full_messages
			redirect_to '/'
		end
	end

	def success
		@current_user = current_user
	end

	private
		def user_params
			params.require(:user).permit(:name, :email, :password, :password_confirmation)
		end
end
