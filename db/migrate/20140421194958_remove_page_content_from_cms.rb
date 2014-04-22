class RemovePageContentFromCms < ActiveRecord::Migration
  def change
    remove_column :cms, :page_content, :text
  end
end
