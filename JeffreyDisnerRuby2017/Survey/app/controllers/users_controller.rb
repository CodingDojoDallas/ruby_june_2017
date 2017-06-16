class UsersController < ApplicationController

  def index

  end

  def display
    if session[:zero]
      session[:zero] += 1
    elsif
      session[:zero] = 0
    end
    flash[:notice] = "Form Submitted #{session[:zero]} times."
  end

  def create
      session[:user] = User.create(name: params[:name], location: params[:location], language: params[:language], comment: params[:comment])
      if session[:user].name == ""
        flash[:error] = "Please fill in Name, Location and Language. 5 character minimum on Name."
      else
        redirect_to '/users'
      end

  end


  protect_from_forgery with: :exception

end
