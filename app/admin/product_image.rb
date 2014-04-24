ActiveAdmin.register ProductImage do

  permit_params :list, :of, :attributes, :on, :model, :avatar, :product_id
  
    form do |f|
      f.inputs "Product Image" do
        f.input :avatar, :as => :file
        f.input :product_id, as: :select, :label => "product id", collection: Product.all.map{ |product| [ product.name, product.id]}
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

