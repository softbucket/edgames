class CreateProvinces < ActiveRecord::Migration
  def change
    create_table :provinces do |t|
      t.string :province_code
      t.decimal :tax_rate

      t.timestamps
    end
  end
end
