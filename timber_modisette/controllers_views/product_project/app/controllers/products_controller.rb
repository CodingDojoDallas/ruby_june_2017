class ProductsController < ApplicationController
  def index
    @products = Product.all
    #render json: @products ---> renders json data
  end
  def create
    @product = Product.create(name: params[:name], description: params[:description])
    redirect_to '/products/index'
    # puts @product
    # render text:'made it'

  end
end
