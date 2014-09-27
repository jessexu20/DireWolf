class Job < ActiveRecord::Base
  validates_presence_of :name,:content,:field,:employer,:deadline,:tag
  has_many :jobapplications,dependent: :destroy
  belongs_to :employer
  searchable do
    text :name
    text :employer
    text :tag
    text :content
    text :field
  end
end
