class CreateRecentlyVieweds < ActiveRecord::Migration
  def change
    create_table :recently_vieweds do |t|

      t.timestamps
    end
  end
end
