class StudentsController < ApplicationController
	def new
		@dojos = Dojo.all
	end

	def create
		student = Student.create(student_params.merge(dojo: Dojo.find(student_params[:dojo])))
		redirect_to '/'
	end

	def show
		@student = Student.find(params[:id])
		@classmates = Student.where.not(id: @student.id).where("created_at > ? AND created_at < ?", @student.created_at.beginning_of_day, @student.created_at.end_of_day)
	end

	def destroy
		Student.destroy(params[:id])
		redirect_to '/'
	end

	private
		def student_params
			params.require(:student).permit(:name, :email, :dojo)
		end
end
