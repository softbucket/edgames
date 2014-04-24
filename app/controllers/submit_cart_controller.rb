class SubmitCartController < ApplicationController
  def index
    
    flash[:user_message] = "HI"
    render nothing: true
    #
    @customer = Customer.new
    @customer.first_name = params[:first_name]
    @customer.last_name = params[:last_name]
    @customer.address = params[:address]
    @customer.city = params[:city]
    #@customer.province = params[:province]
    @customer.save!
    
    @order = Order.new
    @order.customer_id = @customer.id
    @order.total_cost = 0
    @order.save!
    
    session[:order].each {|order|
      @line_item = LineItem.new
      @line_item.product_id = order[0]
      @line_item.quantity = order[1]
      @line_item.order_id = @order.id
      @line_item.save!
      
      price = Product.where("id = #{order[0]}").first.price
      
      @order.total_cost += price * order[1]
    }
    
    taxes = 1.00
    
    province = Province.where("province_code = '#{params[:province]}'").first
    
    if (province)
      taxes = province.tax_rate
    end
    
    @order.total_cost = (taxes * @order.total_cost).to_i
    
    @order.save!
    
    session[:order] = Array.new
    flash[:user_message] = "Order has been submitted with for customer: #{params[:first_name]} #{params[:last_name]}"
  end
end
