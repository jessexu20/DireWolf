class Apply < ActiveRecord::Base
  has_many :line_item1s,dependent: :destroy
  # dependent: :destroy part indicates that the existence of line items is dependent on the existence of the applicant.
  # If we destroy a apply(applicant), deleting it from the database,
  # also to destroy any line items that are associated with that applicant.
end

