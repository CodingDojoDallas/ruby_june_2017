class StudentsController < ApplicationController
  def new
    @dojo = Dojo.find(params[:dojo_id])
    @dojos = Dojo.all
    render "new.html.erb"
  end

  def create
    p student_params
    student = Student.create(student_params.merge(dojo: Dojo.find(student_params[:dojo])))

    if student.valid?  # pass validations, creates dojo into db, displays success msg
      flash[:success] = "#{student_params[:first_name]} was successfully added..."
      redirect_to "/dojos/#{params[:dojo_id]}/"
    else            # fails validations, displays errors
      flash[:errors] = student.errors.full_messages
      redirect_to "/dojos/#{params[:dojo_id]}/students/new"
    end
  end

  def show
    @student = Student.find(params[:student_id])
    @classmates = Student.where.not(id: @student.id).where("created_at > ? AND created_at < ?", @student.created_at.beginning_of_day, @student.created_at.end_of_day)
    render "show.html.erb"
  end

  def edit
    @student = Student.find(params[:student_id])
    @dojos = Dojo.all
    render "edit.html.erb"
  end

  def update
    student = Student.find(params[:student_id])

    if student.update(student_params.merge(dojo: Dojo.find(student_params[:dojo])))
      flash[:success] = "#{student_params[:first_name]} was successfully updated..."
      redirect_to "/dojos/#{params[:dojo_id]}/students/#{student.id}"
    else
      flash[:errors] = student.errors.full_messages
      redirect_to "/dojos/#{params[:dojo_id]}/students/#{student.id}/edit"
    end
  end

  def destroy
    Student.destroy(params[:student_id])
    redirect_to "/dojos/#{params[:dojo_id]}"
  end

  private
    def student_params
      params.require(:student).permit(:first_name, :last_name, :email, :dojo)
    end

end
