require 'rails_helper'

RSpec.describe "Recruiter::Submissions", type: :request do
  describe "GET /recruiter/submissions" do
    it "works! (now write some real specs)" do
      get recruiter_submissions_path
      expect(response).to have_http_status(200)
    end
  end
end
