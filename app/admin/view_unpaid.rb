ActiveAdmin.register_page "View Unpaid" do
  content do
    outtext = ""
    outstanding_orders = Order.all
    outstanding_orders.each {|order|
      if (not order.paid)
        
        outtext += "#{order.customer.first_name} #{order.customer.last_name} with order number "
        outtext += order.id.to_s + " is outstanding with amount of "
        outtext += "#{number_to_currency(order.total_cost/100.0)}.<br />"
      end
    }
    para raw(outtext)
  end
end