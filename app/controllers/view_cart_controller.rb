class ViewCartController < ApplicationController
  def index
    @cart = Array.new
    session[:order].each {|order_line|
      @cart.push({product:Product.where("id = #{order_line[0]}").first, quantity: order_line[1]})
    }
  end
end
