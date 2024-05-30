class Recruiter::Submission < ApplicationRecord
    belongs_to :recruiter_job

    validates :name, presence: true, uniqueness: true
    validates :email, :mobile_phone, :resume, presence: true

    validates :recruiter_job_id, presence: true

end
