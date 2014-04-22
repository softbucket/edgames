class ViewAllProductsController < ApplicationController
  def index
    @items = Product.all.page(params[:page]).per(5)
  end
end
