class ErrorsController < ApplicationController
  skip_before_action :authenticate_user!
  
  def not_found
    skip_authorization
    render status: 404
  end

  def internal_server_error
    skip_authorization
    render status: 500
  end
end
