class DojosController < ApplicationController
  def index
    @dojos = Dojo.all
    render "index.html.erb"
  end

  def new
    render "new.html.erb"
  end

  def create
    dojo = Dojo.create(dojo_params)
    p dojo_params
    if dojo.valid?  # pass validations, creates dojo into db, displays success msg
      flash[:success] = "#{dojo_params["branch"]} was successfully created..."
      redirect_to "/dojos"
    else            # fails validations, displays errors
      flash[:errors] = dojo.errors.full_messages
      redirect_to "/dojos/new"
    end
  end

  private
    def dojo_params
      params.require(:dojo).permit(:branch, :street, :city, :state)
    end
end
