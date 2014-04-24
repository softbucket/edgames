class CheckOutController < ApplicationController
  def index
    @cart = Array.new
    @order_total = 0
    
    session[:order].each {|order_line|
      product = Product.where("id = #{order_line[0]}").first
      @order_total += product.price * order_line[1]
      @cart.push({product:product, quantity: order_line[1], price: product.price})
    }
    
    @order_total = @order_total*1.0/100
  end
end
