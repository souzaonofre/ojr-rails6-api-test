require 'rails_helper'

RSpec.describe "Recruiter::Jobs", type: :request do
  describe "GET /recruiter/jobs" do
    it "works! (now write some real specs)" do
      get recruiter_jobs_index_path
      expect(response).to have_http_status(200)
    end
  end
end
