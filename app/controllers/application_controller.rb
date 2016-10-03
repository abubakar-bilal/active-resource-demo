class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery unless: -> { request.format.json? }

  before_filter :authenticate_token
  before_filter :set_default_response_format

  private

    def authenticate_token
      unless params['token'].present? && params['token'] == ENV['AUTH_TOKEN']
        head :unauthorized
      end
    end

    def set_default_response_format
      request.format = :json
    end

end
