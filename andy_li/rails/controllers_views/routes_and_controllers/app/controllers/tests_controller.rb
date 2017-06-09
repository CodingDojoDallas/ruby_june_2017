class TestsController < ApplicationController
  def hello
    render :text => "Hello CodingDojo!"
  end

  def say_hello
    render :text => "Saying Hello!"
  end

  def hello_joe
    render :text => "Saying Hello Joe!"
  end

  def hello_michael
    redirect_to "/say/hello/joe"
  end

  def index
    render :text => "What do you want me to say?"
  end

  def times
    unless session[:load_count]
      session[:load_count] = 0
    end

    session[:load_count] += 1
    p session[:load_count]

    render :text => "You visited this URL #{session[:load_count]} time(s)."
  end

  def times_restart
    session[:load_count] = nil

    render :text => "Destroyed the session!"
  end



end
