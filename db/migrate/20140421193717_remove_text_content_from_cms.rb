class RemoveTextContentFromCms < ActiveRecord::Migration
  def change
    remove_column :cms, :text_content, :string
  end
end
