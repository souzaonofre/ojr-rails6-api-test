require 'rails_helper'

RSpec.describe "Auth", type: :request do
  describe "POST /auth/login" do
    it "works! (now write some real specs)" do
      post auth_path
      expect(response).to have_http_status(200)
    end
  end
end
