class Jobapplication < ActiveRecord::Base
  validates_presence_of :name, :major,:phone
  belongs_to :job
  belongs_to :user
end
