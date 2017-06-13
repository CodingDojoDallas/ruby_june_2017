class TimesController < ApplicationController
	def index
		time = DateTime.now
		@date = time.strftime("%B %d, %Y")
		@time = time.strftime("%l:%M %p")
	end
end
