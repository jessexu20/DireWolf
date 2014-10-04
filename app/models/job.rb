class Job < ActiveRecord::Base
  validates_presence_of :name,:content,:field,:employer_name,:deadline,:tag
  has_many :jobapplications,dependent: :destroy
  belongs_to :employer
  has_one :category

end
