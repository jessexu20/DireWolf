class Job < ActiveRecord::Base
  validates_presence_of :name,:content,:field,:employer_name,:deadline,:tag
  has_many :jobapplications,dependent: :destroy
  belongs_to :employer
  has_one :category
  def applied_by(user)
    flag=TRUE
    self.jobapplications.each do |jobapplication|
        if jobapplication.user_id ==user.id
          flag=FALSE
          return flag
        end
    end
    flag
  end
  def outdated
    flag=FALSE
    if Time.now>self.deadline
      flag=TRUE
    end
    flag
  end
end
