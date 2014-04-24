ActiveAdmin.register Order do

  permit_params :is_cart, :session_id, :customer_id, :total_cost, :paid, :shipped
  
  form do |f|
    f.inputs "Line Item" do
      #f.input :session_id
      #f.input :is_cart
      #f.input :customer_id
      f.input :total_cost
      f.input :paid
      f.input :shipped
    end
    f.actions
  end
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end
  
end
