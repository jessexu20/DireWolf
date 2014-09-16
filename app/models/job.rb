class Job < ActiveRecord::Base
  validates_presence_of :name,:content,:field,:employer,:deadline,:tag
  has_many :job_applications,dependent: :destroy
  # validate :valid_datetime
  # def valid_datetime
  #   if ((DateTime.parse(deadline)<Datetime))
  #     errors.add(:deadline,'must be later than today')
  #   end
  # end
end
