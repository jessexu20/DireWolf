require 'test_helper'

class JobTest < ActiveSupport::TestCase
   test "job attributes must not be empty" do
    # assert true
     job = Job.new
     assert job.invalid?
     assert job.errors[:name].any?
     assert job.errors[:content].any?
     assert job.errors[:field].any?
     assert job.errors[:tag].any?
  #   assert job.errors[:tag_id].any?
     assert job.errors[:employer].any?
     assert job.errors[:deadline].any?
  #   assert job.errors[:employer_id].any?
   end
end
