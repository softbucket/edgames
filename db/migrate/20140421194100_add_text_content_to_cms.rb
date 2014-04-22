class AddTextContentToCms < ActiveRecord::Migration
  def change
    add_column :cms, :text_content, :text
  end
end
