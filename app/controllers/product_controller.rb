class ProductController < ApplicationController
  def index
    @products = Product.all
    respond_to do |format|
      format.html
      format.json
    end
  end

  def filter
    if params[:category] == 'all'
      @products = Product.all
      messages = ''
    else
      @products = Product.where(category: params[:category])
      message = "Products for category #{params[:category]}"
    end
    if @products == []
      message = 'Sorry there are no products in that category'
    end
    respond_to do |format|
      format.json { render json: {data: @products, message: message} }
    end
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
