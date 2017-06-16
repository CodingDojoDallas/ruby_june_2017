class RpgController < ApplicationController

  def index
    if !session[:gold]
        session[:gold] = 0
    end
    if !session[:messages]
        session[:messages] = []
    end
  end

  def farm
    gold = rand(10..20).round
    session[:gold] += gold
    messageObj = {}
    if gold>0
      action = 'Gained'
      messageObj[:color] = 'green'
    else
      action='Lost'
      messageObj[:color] = 'red'
    end
    messageObj[:message] = "#{action} #{gold} gold from farm"
    session[:messages].insert(0, messageObj)
    puts "Sessions:"
    puts session[:messages]
    redirect_to "/"
  end

  def cave
    gold = rand(5..10).round
    session[:gold] += gold
    messageObj = {}
    if gold>0
      action = 'Gained'
      messageObj[:color] = 'green'
    else
      action='Lost'
      messageObj[:color] = 'red'
    end
    messageObj[:message] = "#{action} #{gold} gold from cave"
    session[:messages].insert(0, messageObj)
    puts "Sessions:"
    puts session[:messages]
    redirect_to "/"
  end

  def house
    gold = rand(2..5).round
    session[:gold] += gold
    messageObj = {}
    if gold>0
      action = 'Gained'
      messageObj[:color] = 'green'
    else
      action='Lost'
      messageObj[:color] = 'red'
    end
    messageObj[:message] = "#{action} #{gold} gold from house"
    session[:messages].insert(0, messageObj)
    puts "Sessions:"
    puts session[:messages]
    redirect_to "/"
  end

  def casino
    gold = rand(-50..50).round
    session[:gold] += gold
    messageObj = {}
    if gold>0
      action = 'Gained'
      messageObj[:color] = 'green'
    else
      action='Lost'
      messageObj[:color] = 'red'
    end
    messageObj[:message] = "#{action} #{gold} gold from casino"
    session[:messages].insert(0, messageObj)
    puts "Sessions:"
    puts session[:messages]
    redirect_to "/"
  end

  def reset
    session[:gold] = 0
    session[:messages] = []
    redirect_to "/"
  end

protect_from_forgery with: :exception
end
