class StudentsController < ApplicationController
  def create
  	dojo_id = student_params[:dojo_id]
  	student = Student.create(student_params)
		if student.valid?
			redirect_to "/dojos/#{dojo_id}"
		else
			flash[:errors] = student.errors.full_messages
			redirect_to "/dojos/#{dojo_id}/students/new"
		end
  end

  def new
  	current_dojo
  end

  def edit
  	current_student
  	current_dojo
  	#render edit page
  end

  def update
  	student = Student.update(params[:student_id], student_params)
	if student.valid?
		redirect_to "/dojos/#{student.dojo_id}/students/#{student.id}"
	else
		flash[:errors] = student.errors.full_messages
		redirect_to "/dojos/#{student.dojo_id}/students/#{student.id}/edit"
	end
  end

  def destroy
  	student = Student.find(params[:student_id])
	student.destroy
	redirect_to "/dojos/#{student.dojo_id}"
  end

  def show
  	current_student
  	@cohort = Student.where.not(id: @student).where(created_at: @student.created_at.beginning_of_day..@student.created_at.end_of_day)
  end
end

private
		def student_params
			params.require(:student).permit(:first_name, :last_name, :email, :dojo_id)
		end

		def current_dojo
			@dojo = Dojo.find(params[:dojo_id])
		end
		def current_student
			@student = Student.find(params[:student_id])
		end





