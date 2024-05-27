class Recruiter::Submission < ApplicationRecord
    belongs_to :recruiter_job

    validates :name, presence: true, uniqueness: true
    validates :email, presence: true
    validates :mobile_phone
    validates :resume

    validates :recruiter_job_id, presence: true

end
