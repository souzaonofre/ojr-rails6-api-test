require 'rails_helper'

RSpec.describe "Recruiters", type: :request do
  describe "GET /recruiters" do
    it "works! (now write some real specs)" do
      get recruiters_index_path
      expect(response).to have_http_status(200)
    end
  end
end
