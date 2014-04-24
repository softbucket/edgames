class AddAvatarToProductImage < ActiveRecord::Migration
  def change
    add_column :product_images, :avatar, :string
  end
end
