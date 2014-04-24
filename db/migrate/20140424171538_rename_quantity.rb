class RenameQuantity < ActiveRecord::Migration
  def change
    rename_column("line_items","quantiy", "quantity")
  end
end
