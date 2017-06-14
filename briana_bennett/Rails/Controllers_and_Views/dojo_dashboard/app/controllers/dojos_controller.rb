class DojosController < ApplicationController
	def index
		@dojos = Dojo.all
	end
	def new
	end
	def create
		dojo = Dojo.create(dojo_params)
		if dojo.valid?
			flash[:success] = 'you have successfully submitted the form'
			redirect_to '/', notice: 'you have successfully submitted the form'
		else
			flash[:errors] = dojo.errors.full_messages
			redirect_to '/dojos/new'
		end
	end

	private
		def dojo_params
			params.require(:dojo).permit(:branch, :street, :state, :city)
		end
end
