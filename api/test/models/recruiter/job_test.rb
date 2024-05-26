require "test_helper"

class Recruiter::JobTest < ActiveSupport::TestCase
  test "instance" do
    recruiter_job = Recruiter::Job.new
    assert_not_nil recruiter_job 
    assert_instance_of Recruiter::Job, recruiter_job
  end

  test "new recruiter" do
    fake_data = {
      :title =>  "Job for Recruiter 001",
      :description => "Hiring workers to Job",
      :recruiter_id => Recruiter.first.id,
    }

    recruiter_job = Recruiter::Job.new fake_data
    assert recruiter_job.save

    assert_respond_to recruiter_job, :title
    assert recruiter_job.title === fake_data[:title]

    assert_respond_to recruiter_job, :description
    assert recruiter_job.description === fake_data[:description]

    assert_respond_to recruiter_job, :recruiter_id
    assert recruiter_job.recruiter_id === fake_data[:recruiter_id]

  end

  test "update recruiter" do
    fake_data = {
      :title =>  "Job for Recruiter 001",
      :description => "Hiring workers to Job",
      :recruiter_id => Recruiter.first.id,
    }

    recruiter_job = Recruiter::Job.new fake_data
    assert recruiter_job.save

    update_fake_data = {
      :title => "Job for Recruiter 002",
      :description => "recruiter_002@gmail.com"
    }
    assert recruiter_job.update update_fake_data
    assert recruiter_job.title === update_fake_data[:title]
    assert recruiter_job.description === update_fake_data[:description]

  end

  test "delete recruiter" do
    fake_data = {
      :title =>  "Job for Recruiter 001",
      :description => "Hiring workers to Job",
      :recruiter_id => Recruiter.first.id,
    }

    recruiter_job = Recruiter::Job.new fake_data
    assert recruiter_job.save
    assert_respond_to recruiter_job, :id

    found_recruiter_job = Recruiter::Job.find recruiter_job.id
    assert_not_nil found_recruiter_job

    assert found_recruiter_job.delete
    
    after_delete_recruiter_job = nil
    begin
      after_delete_recruiter_job = Recruiter::Job.find recruiter_job.id
    rescue ActiveRecord::RecordNotFound
    end
    assert_nil after_delete_recruiter_job
  end

end
