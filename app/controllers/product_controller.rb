class ProductController < ApplicationController
  def product
    @product = Product.where("id='#{params[:id]}'").first;
  end
end
