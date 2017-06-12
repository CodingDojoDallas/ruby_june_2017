class RpgController < ApplicationController
  def index
    unless session[:gold_ttl] && session[:msgs]
      session[:gold_ttl] = 0
      session[:msgs] = []
    end

    @gold_ttl = session[:gold_ttl]
    @msgs = session[:msgs]
    render "index.html.erb"
  end

  def game
    case params[:bldg]
    when "farm"
      gold = rand(10..20)
    when "cave"
      gold = rand(5..10)
    when "house"
      gold = rand(2..5)
    else    # params[:bldg] == "casino"
      gold = rand(-50..50)

    end   # end of switch case

    session[:gold_ttl] += gold

    if gold >= 0
      session[:msgs].unshift("Earned #{gold} from the #{params[:bldg]}! #{Time.now.strftime("%Y/%m/%d %I:%M %P")}")
    else  # gold < 0
      session[:msgs].unshift("Lost #{gold.abs} from the #{params[:bldg]}! #{Time.now.strftime("%Y/%m/%d %I:%M %P")}")
    end

    redirect_to "/"

  end

  def reset
    session[:gold_ttl], session[:msgs] = nil
    redirect_to "/"
  end

end
