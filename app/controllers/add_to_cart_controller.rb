class AddToCartController < ApplicationController
  def index
    @product = Product.where("id='#{params[:id]}'").first;
    @product_name = @product.name
    @quantity = params[:quantity].to_i
    @exists = false
    flash[:user_message] = ""
  
    #session[:order] = nil
    if (session[:order].nil?)
      session[:order] = Array.new
    end
    #flash[:user_message] += session[:order].class.to_s#[:order].class
    
    session[:order].each {|order_line|
      #flash[:user_message] += order_line[0].to_i.to_s
      if order_line[0].to_i == params[:id].to_i
        order_line[1] += 1
        @exists = true
        #flash[:user_message] += "FOUND!"
        break
      end
    }
    
    if not @exists
      session_order = Array.new
      session_order[0] = params[:id].to_i
      session_order[1] = @quantity
      session[:order].push(session_order);
    end
    
    flash[:user_message] += "Added #{@product_name} to the cart."
    render nothing: true
  end
end
