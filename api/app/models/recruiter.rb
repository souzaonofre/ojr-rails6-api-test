class Recruiter < ApplicationRecord
    require "securerandom"
    
    has_secure_password

    has_many :recruiter_jobs

    validates :name, presence: true, uniqueness: true
    validates :email, presence: true
    validates :password, presence: true

end
