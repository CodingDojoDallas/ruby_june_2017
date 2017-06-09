class UsersController < ApplicationController
  def index
    render text: 'what do you want me to say?'
  end
  def hello
    render text:'hello coding dojo'
  end
  def sayhello
    render text:'saying hello'
  end
  def say_hello_user
    render text:'hello Joe!'
  end
  def say_hello_redirect
    redirect_to '/say/hello/joe'
  end
  def times
    # if session[:count] exists, leave it as is. Else set it to 0
    session[:count] ||= 0
    render text: "You have visited this url #{session[:count] += 1} time(s)"
  end
  def reset
    reset_session
    render text:'session resset'
  end
end
