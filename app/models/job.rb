class Job < ActiveRecord::Base
  validates_presence_of :name,:content,:field,:employer_name,:deadline,:tag
  has_many :jobapplications,dependent: :destroy
  belongs_to :employer
  has_one :category

  scope :by_name, lambda {|name| where(Job.arel_table[:name].matches("%#{name}%")) if !name.blank?}
  scope :by_content, lambda {|content| where(Job.arel_table[:content].matches("%#{content}%")) if !content.blank?}
  scope :by_employer, lambda {|employer| where(Job.arel_table[:employer_name].matches("%#{employer}%")) if !employer.blank?}
  scope :by_category, lambda {|category| where(Job.arel_table[:field].matches("%#{category}%")) if !category.blank?}


  def self.search_jobs(params)
    jobs = Job.includes(:employer, :category)
    .by_name(params[:name])
    .by_content(params[:content])
    .by_employer(params[:employer_name])
    .by_category(params[:category_name])
    jobs = jobs.uniq
    return jobs
  end

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
