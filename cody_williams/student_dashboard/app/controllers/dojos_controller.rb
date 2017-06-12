class DojosController < ApplicationController
	def index
		@dojos = Dojo.all
	end

	def show
		@dojo = Dojo.find(params[:id])
		@students = @dojo.students
	end

	def create
		dojo = Dojo.create(dojo_params)
		if dojo.valid?
			redirect_to '/'
		else
			flash[:dojo_errors] = dojo.errors.full_messages
			redirect_to '/dojos/new'
		end
	end

	private
		def dojo_params
			params.require(:dojo).permit(:branch, :street, :city, :state)
		end
end
