class ApplicationController < ActionController::API
  before_action :authenticate_request
  attr_reader :current_user
  
  def auto_login
    render json: current_user
  end

  private
  
  def authenticate_request
    @current_user = AuthorizeApiRequest.call(request.headers).result
    render json: {error: 'not authorized'}, status: 401 unless @current_user
  end
end
