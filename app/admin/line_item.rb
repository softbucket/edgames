ActiveAdmin.register LineItem do

  permit_params :quantity, :order_id, :product_id
  
  form do |f|
    f.inputs "Line Item" do
      f.input :order_id
      f.input :quantity
      f.input :product_id
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
