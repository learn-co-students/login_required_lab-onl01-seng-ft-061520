require 'rails_helper'

RSpec.describe SessionsController do
  describe 'create' do
    it 'redirects to login page if :name is nil' do
      post :create, params: { name: nil }
      expect(response).to redirect_to controller: 'sessions', action: 'index'
    end

    it 'redirects to login page if :name is empty' do
      post :create, params: { name: '' }
      expect(response).to redirect_to controller: 'sessions', action: 'index'
    end

  end

  describe 'destroy' do
    it 'leaves session[:name] nil if it was not set' do
      post :destroy
      expect(@request.session[:name]).to be nil
    end


  end
end
