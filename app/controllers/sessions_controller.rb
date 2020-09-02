
class SessionsController < ApplicationController

  def new
  end

  def create
    if params[:name].empty?
      redirect_to new_session_path, alert: 'You\'re not logged in!'
    else
      session[:name] = params[:name]
      redirect_to :show
    end
  end

  def destroy
    session[:name] = nil
  end


end
