require "test_helper"

class RecruiterTest < ActiveSupport::TestCase

  test "instance" do
    recruiter = Recruiter.new
    assert_not recruiter.nil? 
    assert recruiter.instance_of? Recruiter
  end

end
