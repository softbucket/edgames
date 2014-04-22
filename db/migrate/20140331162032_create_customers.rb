class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.text :first_name
      t.text :last_name
      t.text :password
      t.text :phone
      t.text :address
      t.text :city

      t.timestamps
    end
  end
end
