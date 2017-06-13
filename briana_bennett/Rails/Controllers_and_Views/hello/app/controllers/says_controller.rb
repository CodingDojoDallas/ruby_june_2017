class SaysController < ApplicationController
	def hello
		render text: "hello coding dojo"
	end
	def sayHello
		render text: "saying hello!"
	end
	def helloJoe
		render text: "saying hello joe!"
	end
	def helloMichael
		redirect_to '/say/hello/joe'
	end
	def index
		render text: 'what do you want me to say???'
	end
	def times
		unless session[:count]
			session[:count] = 0
		end
		session[:count] += 1

		render text: "you have visited this page #{session[:count]} times"
	end
	def restart
		session.clear
		render text: 'destroyed the session!'
	end
end
