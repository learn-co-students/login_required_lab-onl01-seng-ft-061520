class SecretsController < ApplicationController
  before_action :require_login

  def require_login
    redirect_to '/login' unless session[:name]
  end
end
