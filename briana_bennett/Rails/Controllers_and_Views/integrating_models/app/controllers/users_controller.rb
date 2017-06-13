class UsersController < ApplicationController
	def index
		render json: User.all
	end
	
	def new
		#showing form to create user
	end
	
	def create
		user = User.new(name: params[:name])
		user.save
		redirect_to '/users'
	end

	def show
		@user = User.find(params[:id])
	end

	def edit
		# render edit page
		@user = User.find(params[:id])
	end

	def total
		@total = User.all.length
	end
end
