class CreateCms < ActiveRecord::Migration
  def change
    create_table :cms do |t|
      t.string :page_name
      t.string :page_content

      t.timestamps
    end
  end
end
