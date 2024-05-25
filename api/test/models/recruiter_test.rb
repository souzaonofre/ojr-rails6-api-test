require "test_helper"

class RecruiterTest < ActiveSupport::TestCase

  test "instance" do
    recruiter = Recruiter.new
    assert_not_nil recruiter 
    assert_instance_of Recruiter, recruiter
  end

  test "new recruiter" do
    fake_data = {
      :name =>  "Recruiter 001",
      :email => "recruiter_001@gmail.com",
      :password => "sdsadsdaddksldjakdajdaldaiuiwiwiwi"
    }

    recruiter = Recruiter.new

    recruiter.name = fake_data[:name]
    recruiter.email = fake_data[:email]
    recruiter.password = fake_data[:password]
    recruiter.password_confirmation = fake_data[:password]
    
    assert recruiter.save

    assert_respond_to recruiter, :name
    assert recruiter.name === fake_data[:name]

    assert_respond_to recruiter, :email
    assert recruiter.email === fake_data[:email]

    assert_respond_to recruiter, :password
    assert recruiter.password === fake_data[:password]

  end

end
