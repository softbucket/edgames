class CreateProductImages < ActiveRecord::Migration
  def change
    create_table :product_images do |t|
      t.text :url
      t.integer :type

      t.timestamps
    end
  end
end
