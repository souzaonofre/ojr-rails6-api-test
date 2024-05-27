class AuthController < ApplicationController
  def login
    @user = Recruiter.find_by_email(params[:email])

    render json: { error: 'Invalid credentials' }, status: :unauthorized unless @user || @user&.authenticate(params[:password])

    payload = { id: @user.id }
    str_token = jwt_encode(payload)

    render json: { token: str_token }, status: :ok
  end
end
