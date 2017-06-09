class UsersController < ApplicationController
  def index
    render json: User.all
  end

  def new
    render "new"
  end

  def show
    # p "show method..."
    render json: User.first
  end

  def edit
    @user = User.first
    render "edit"
  end

  def create
    User.create(name:params[:name])
    redirect_to "/users"
  end

  def total
    render text: "Total numbers of users: #{User.all.length}"
  end

  def update
    User.update(User.first.id, name:params[:name])
    redirect_to "/users/#{User.first.id}"
  end




end
