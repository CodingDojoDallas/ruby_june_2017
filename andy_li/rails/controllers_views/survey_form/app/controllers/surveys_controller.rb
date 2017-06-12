class SurveysController < ApplicationController
  def index
  	render "index.html.erb"
  end

  def create
    unless session[:count]
      session[:count] = 0
    end

    session[:count] += 1
    # save survey data to session
    session[:name] = params[:name]
    session[:loc] = params[:loc]
    session[:lang] = params[:lang]
    session[:comment] = params[:comment]

    flash[:msg] = "Thanks for submitting the form! Survey was submitted #{session[:count]} times."

    redirect_to "/results"
  end

  def results
    render "results.html.erb"
  end


end
