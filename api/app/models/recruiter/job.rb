class Recruiter::Job < ApplicationRecord

    belongs_to :recruiter
    has_many :submissions

    validates :title, presence: true, uniqueness: true
    validates :description, presence: true
    validates :recruiter_id, presence: true

end
