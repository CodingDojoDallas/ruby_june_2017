class UsersController < ApplicationController
  def index
    render text: 'What can I help you With?'
  end
  def greeting

  end
  def say

  end
  def joe

  end

  def michael
    redirect_to '/say/hello/joe'
  end

  def times
    if session[:zero]
      session[:zero] += 1
    elsif
      session[:zero] = 0
    end
    render text: "Page visited #{session[:zero]} times."
  end

  def restart
    session[:zero] = 0
    render text: "Session restarted."
  end

  def display
    render json: User.all.select(:id, :firstName, :created_at, :updated_at)
  end

  def new

  end

  def first
    render json: User.first
  end

  def edit
    session[:user] = User.find(1)
  end

  def create
    User.create(firstName: params[:firstName], lastName: params[:lastName], email: params[:email])
    redirect_to '/users'
  end

  def total
    total = User.all.length
    render text: "Total number of users so far: #{total}"
  end

end
