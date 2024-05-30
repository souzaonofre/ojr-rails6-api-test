require 'rails_helper'
require 'json'

RSpec.describe "Recruiters", type: :request do
  before {
    @r1 = Recruiter.new(name: 'Recruiter 001', email: 'recruiter001@gmail.com')
    @r1.password = 'pwdrecruiter001'
    @r1.password_confirmation = 'pwdrecruiter001'
    @r1.save

    @r2 = Recruiter.new(name: 'Recruiter 002', email: 'recruiter002@gmail.com')

    headers = { "ACCEPT" => "application/json" }
    post auth_login_path, :params => {:email => @r1.email , :password => @r1.password}, :headers => headers

    resp_data = response.parsed_body

    @auth_headers = { 
      "ACCEPT" => "application/json", 
      "Authorization" => "bearer " + resp_data["token"]
    }
  }  

  describe "GET /recruiters" do
    it "list recruiters" do
      get recruiters_path, :headers => @auth_headers
      expect(response).to have_http_status(204)
    end
  end
end
