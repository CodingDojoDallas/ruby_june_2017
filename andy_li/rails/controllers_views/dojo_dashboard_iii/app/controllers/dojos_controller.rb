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
    if dojo.valid?  # pass validations, creates dojo into db, displays success msg
      flash[:success] = "#{dojo_params[:branch]} was successfully created..."
      redirect_to "/dojos"
    else            # fails validations, displays errors
      flash[:errors] = dojo.errors.full_messages
      redirect_to "/dojos/new"
    end
  end

  def show
    @dojo = Dojo.find(params[:id])
    render "show.html.erb"
  end

  def edit
    @dojo = Dojo.find(params[:id])
    render "edit.html.erb"
  end

  def update
    @dojo = Dojo.find(params[:id])

    if @dojo.update(dojo_params)
      flash[:success] = "#{dojo_params[:branch]} was successfully updated..."
      redirect_to "/dojos/#{params[:id]}"
    else
      flash[:errors] = @dojo.errors.full_messages
      redirect_to "/dojos/#{params[:id]}/edit"
    end
  end

  def destroy
    Dojo.destroy(params[:id])
    redirect_to "/dojos"
  end

  private
    def dojo_params
      params.require(:dojo).permit(:branch, :street, :city, :state)
    end
end
