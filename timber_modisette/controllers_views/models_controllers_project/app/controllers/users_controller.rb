class UsersController < ApplicationController
  def index
    @users = User.all
  end
  def create

  end
  def create_user
    @user = User.create(name: params[:name])
    redirect_to '/users/index'
  end
  def show
    @user = User.find(params[:id])
    puts "alksdfalsdf #{@user}"

  end

  def update
    @user = User.find(params[:id])
  end
  def updated
    @updated_user = User.find(params[:id]).update(name:params[:value])
  end
end
