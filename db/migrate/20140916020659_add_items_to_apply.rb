class AddItemsToApply < ActiveRecord::Migration
  def change
    add_column :applies, :name, :string
    add_column :applies, :email, :string
  end
end
