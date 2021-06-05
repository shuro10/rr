require 'rails_helper'

RSpec.describe User, type: :request do
  describe 'User' do
    before(:each) do
      @user = create(:user)
    end

    it 'gets the list of users' do
      get '/api/v1/users/'
      JSON.parse(response.body)
      expect(response.status).to eq(200)
    end

    it 'gets the user' do
      get "/api/v1/users/#{@user.id}"
      json = JSON.parse(response.body)
      expect(json['email']).to eq(@user.email)
    end
  end
end
