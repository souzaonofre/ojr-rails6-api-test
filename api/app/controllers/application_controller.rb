class ApplicationController < ActionController::API
  include JsonJwtToken

  before_action :check_auth_jwt, except: :login

  private

  def check_auth_jwt
    header = request.headers['Authorization']
    header = header.split(' ').last if header

    begin
      jwt_data = jwt_decode(header)
      @curr_user = Recruiter.find(jwt_data[:recruiter_id])
    rescue JWT::DecodeError
      render json: { error: 'invalid Token' }, status: :unauthorized
    end
  end
end
