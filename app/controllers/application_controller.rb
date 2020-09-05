class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :require_login
  skip_before_action :require_login, only: [:index]

  def hello
    redirect_to controller: 'sessions', action: 'index' unless session[:name]
  end

  def require_login
    redirect_to controller: 'sessions', action: 'index' unless current_user
end

  def current_user
    session[:name]
  end
end
