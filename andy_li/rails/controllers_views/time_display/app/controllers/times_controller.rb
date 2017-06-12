class TimesController < ApplicationController
  def main
    date_time = Time.new
    @date = date_time.strftime("%b %d, %Y")
    @time = date_time.strftime("%I:%M %p")
    render "main.html.erb"
  end


end
