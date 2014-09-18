class CreateJobApplications < ActiveRecord::Migration
  def change
    create_table :job_applications do |t|
      t.string :name
      t.string :email
      t.text :coverletter

      t.timestamps
    end
  end
end
