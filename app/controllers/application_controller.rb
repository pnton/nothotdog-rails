class ApplicationController < ActionController::Base
  rescue_from ActionController::InvalidAuthenticityToken, with: :invalid_auth_token
 
  private
 
    def invalid_auth_token 
      render plain: "Please go to http://nothotdog-rails.herokuapp.com.\n", status: 422
    end
end