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
			redirect_to '/dojos', notice: 'you have successfully submitted the form'
		else
			flash[:errors] = dojo.errors.full_messages
			redirect_to '/dojos/new'
		end
	end

	def show
		current_dojo
		@students = Student.where(dojo_id: current_dojo.id)
	end

	def edit
		current_dojo
	end

	def update
		dojo = Dojo.find(params[:id])
		dojo.update(dojo_params)

		if dojo.valid?
			redirect_to '/dojos', notice: 'you have successfully edited the dojo'
		else
			flash[:errors] = dojo.errors.full_messages
			redirect_to "/dojos/#{dojo.id}/edit"
		end
	end

	def destroy
		dojo = Dojo.find(params[:id])
		dojo.destroy
		redirect_to '/dojos'
	end

	private
		def dojo_params
			params.require(:dojo).permit(:branch, :street, :state, :city)
		end

		def current_dojo
			@dojo = Dojo.find(params[:id])
		end
end
