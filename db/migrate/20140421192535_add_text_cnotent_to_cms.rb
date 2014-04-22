class AddTextCnotentToCms < ActiveRecord::Migration
  def change
    add_column :cms, :text_content, :string
  end
end
