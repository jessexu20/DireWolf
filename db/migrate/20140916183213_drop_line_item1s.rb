class DropLineItem1s < ActiveRecord::Migration
  def change
    drop_table(:line_item1s)
  end
end
