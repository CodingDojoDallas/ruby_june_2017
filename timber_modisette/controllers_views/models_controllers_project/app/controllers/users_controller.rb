class UsersController < ApplicationController
  def index
    @users = User.all
  end
  def new
    #loads new.html
  end
  def create
    #create new user and redirect to index
    @user = User.create(name: params[:name])
    redirect_to '/'
  end
  def show
    #loads a specific user page
    @user = User.find(params[:id])
  end
  def edit
    #loads edit.html
    @user = User.find(params[:id])
  end

  def update
    #updates user and redirects to index
    @user = User.find(params[:id]).update(name: params[:name])
    redirect_to '/'
  end
  def total
    @count = User.all.count
  end
end
