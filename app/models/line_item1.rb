class LineItem1 < ActiveRecord::Base
  belongs_to :job
  belongs_to :apply
  belongs_to :applicationsheet
end
