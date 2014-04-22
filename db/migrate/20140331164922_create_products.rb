class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.text :description
      t.text :name
      t.text :rating
      t.text :platform
      t.integer :price
      t.integer :stock

      t.timestamps
    end
  end
end
