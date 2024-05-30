require 'rails_helper'

RSpec.describe "Auth", type: :request do
  before {
    @r1 = Recruiter.new(name: 'Recruiter 001', email: 'recruiter001@gmail.com')
    @r1.password = 'pwdrecruiter001'
    @r1.password_confirmation = 'pwdrecruiter001'
    @r1.save
  }  

  describe "POST /auth/login" do
    it "login" do
      headers = { "ACCEPT" => "application/json" }
      post auth_login_path, :params => {:email => @r1.email , :password => @r1.password}, :headers => headers
      expect(response.content_type).to eq("application/json; charset=utf-8")
      expect(response).to have_http_status(200)
      expect(response.parsed_body).to include("token") 
    end
  end
end
