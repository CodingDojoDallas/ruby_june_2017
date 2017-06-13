class StudentsController < ApplicationController
	def new
		#render new.html
	end
	def create
		session[:user] = params[:user]

		if session[:count]
			session[:count] += 1
		else
			session[:count] = 0
		end

		flash[:message] = "thanks for submitting this form! You have submitted this form #{session[:count]}times."
		
		redirect_to '/result'
	end
	def result
		#render that shit
	end
end
