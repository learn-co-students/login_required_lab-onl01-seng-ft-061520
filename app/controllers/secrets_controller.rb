
class SecretsController < ApplicationController
  # before_action :logged_in
  # skip_before_action :logged_in, only: [:index]

  def show
    if current_user.nil?
      redirect_to new_session_path
    end
    @username = current_user
  end


  # private
  #
  # def logged_in
  #   return head(:forbidden) unless session.include? :user_id
  # end
end
