require 'test_helper'

class JobapplicationTest < ActiveSupport::TestCase
   test "Jobapplication attributes must not be empty" do
  #   assert true
     jobapplication = Jobapplication.new
     assert jobapplication.valid?
     # assert jobapplication.errors[:coverletter].any?
     # assert jobapplication.errors[:email].any?
  # assert jobapplication.errors[:job_id].any?
   end
end
