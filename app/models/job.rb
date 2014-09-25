class Job < ActiveRecord::Base
  validates_presence_of :name,:content,:field,:employer,:deadline,:tag
  has_many :jobapplications,dependent: :destroy
end
