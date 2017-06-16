class DojosController < ApplicationController

  def index
    @dojos = Dojo.all
  end

  def new

  end

  def create
    n = Dojo.create(branch: params[:branch], street: params[:street], city: params[:city], state: params[:state])
    if n.branch == ""
      flash[:error] = "Error, please fill in all categories."
      redirect_to '/dojos/new'
    else
      redirect_to '/'
    end
  end

  def display
    @dojo = Dojo.find(params[:id])
  end

  def edit
    @dojo = Dojo.find(params[:id])
  end

  def update
    Dojo.find(params[:id]).update(branch: params[:branch], street: params[:street], city: params[:city], state: params[:state])
    redirect_to '/'
  end
  def destroy
    Dojo.find(params[:id]).destroy
    redirect_to '/'
  end



end
