class CreateLineItem1s < ActiveRecord::Migration
  def change
    create_table :line_item1s do |t|
      t.integer :job_id
      t.integer :apply_id

      t.timestamps
    end
  end
end
