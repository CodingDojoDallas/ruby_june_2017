class TimersController < ApplicationController
  def index
    session[:time] = Time.now.strftime("%I:%M %p  %Z  %B %d, %Y")
    puts session[:time]
  end
end
