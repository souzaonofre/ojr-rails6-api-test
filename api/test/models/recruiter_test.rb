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
      :password => "sdsadsdaddksldjakdajdaldaiuiwiwiwi",
      :password_confirmation => "sdsadsdaddksldjakdajdaldaiuiwiwiwi"
    }

    recruiter = Recruiter.new fake_data
    assert recruiter.save

    assert_respond_to recruiter, :name
    assert recruiter.name === fake_data[:name]

    assert_respond_to recruiter, :email
    assert recruiter.email === fake_data[:email]

    assert_respond_to recruiter, :password
    assert recruiter.password === fake_data[:password]

  end

  test "update recruiter" do
    fake_data = {
      :name =>  "Recruiter 001",
      :email => "recruiter_001@gmail.com",
      :password => "sdsadsdaddksldjakdajdaldaiuiwiwiwi",
      :password_confirmation => "sdsadsdaddksldjakdajdaldaiuiwiwiwi"
    }

    recruiter = Recruiter.new fake_data
    assert recruiter.save

    update_fake_data = {
      :name => "Recruiter 002",
      :email => "recruiter_002@gmail.com"
    }
    assert recruiter.update update_fake_data
    assert recruiter.name === update_fake_data[:name]
    assert recruiter.email === update_fake_data[:email]

  end

  test "delete recruiter" do
    fake_data = {
      :name =>  "Recruiter 001",
      :email => "recruiter_001@gmail.com",
      :password => "sdsadsdaddksldjakdajdaldaiuiwiwiwi",
      :password_confirmation => "sdsadsdaddksldjakdajdaldaiuiwiwiwi"
    }

    recruiter = Recruiter.new fake_data
    assert recruiter.save
    assert_respond_to recruiter, :id

    found_recruiter = Recruiter.find recruiter.id
    assert_not_nil found_recruiter

    assert found_recruiter.delete
    
    after_delete_recruiter = nil
    begin
      after_delete_recruiter = Recruiter.find recruiter.id
    rescue ActiveRecord::RecordNotFound
    end
    assert_nil after_delete_recruiter

  end


end
