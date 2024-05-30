class ApplicationController < ActionController::API
  include JsonJwtToken
  rescue_from Exception, with: :handle_exception

  before_action :check_auth_jwt, except: :login

  EXCEPTIONS_TO_CAPTURE = [
    ActionController::RoutingError,
    ActiveRecord::RecordNotFound,
    ActionController::UnknownFormat
  ]

  def handle_exception(exception=nil)
    if exception
      if EXCEPTIONS_TO_CAPTURE.include?(exception.class)
        render json: {:error => 'resource not found'}, status: 404 
      else
        render json: {:error => 'internal error'}, status: 500 
      end
    end
  end

  def not_found
    raise ActionController::RoutingError.new('Not Found')
  end

  private

  def check_auth_jwt
    header = request.headers['Authorization']
    header = header.split(' ').last if header

    begin
      jwt_data = jwt_decode(header)
      @curr_user = Recruiter.find(jwt_data[:id])
    rescue JWT::DecodeError
      render json: { error: 'invalid Token' }, status: :unauthorized
    end
  end
end
