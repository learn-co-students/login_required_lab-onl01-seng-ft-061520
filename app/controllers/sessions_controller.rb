class SessionsController < ApplicationController
  def new; end

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to '/signin'
    else
      session[:name] = params[:name]
      redirect_to show_path
    end
  end

  def destroy
    session.delete :name
    redirect_to root_path
  end

  private

  def name_params
    params.require(:name).permit(:name)
  end
end
