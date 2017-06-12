class DojosController < ApplicationController
  def index
    @dojos = Dojo.all
    render "index.html.erb"
  end
end
