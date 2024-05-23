require "jwt"
require "active_support/concern"

module JsonJwtToken
    extend ActiveSupport::Concern
    SECRET_JWT_KEY = Rails.application.secret_key_base

    def jwt_encode(payload, exp = 4.hour.from_now)
        payload[:exp] = exp.to_i
        JWT.encode(payload, SECRET_JWT_KEY)
    end

    def jwt_decode(token)
        payload = JWT.decode(token, SECRET_JWT_KEY)
        HashWithIndifferentAccess.new payload[0]
    end
end