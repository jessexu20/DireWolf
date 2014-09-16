class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :name
      t.text :content
      t.string :field
      t.string :tag
      t.string :employer
      t.date :deadline

      t.timestamps
    end
  end
end
