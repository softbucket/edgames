class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.boolean :is_cart

      t.timestamps
    end
  end
end
