class RpgController < ApplicationController
	def index
		if not session[:gold]
			session[:gold] = 0
		end
		if not session[:activities]
			session[:activities] = []
		end
	end

	def gold
		if params[:place] == 'farm'
			gold = rand(10..20)
		elsif params[:place] == 'cave'
			gold = rand(5..10)
		elsif params[:place] == 'house'
			gold = rand(2..5)
		else #casino
			gold = rand(-50..50)
		end	
		session[:gold] += gold
		time_stamp = DateTime.now
		if gold < 0
			session[:activities].push("you lost #{gold} gold from the #{params[:place]} #{time_stamp}")
		else
			session[:activities].push("you earned #{gold} gold from the #{params[:place]} #{time_stamp}")
		end
		redirect_to '/'	
	end
		
end
