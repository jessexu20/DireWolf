class AddStatusToJobApplication < ActiveRecord::Migration
  def change
    add_column :job_applications, :status ,:string
  end
end
