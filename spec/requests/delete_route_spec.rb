require 'rails_helper'

describe 'delete route', :type => :request do

  before do
    post '/api/v1/animals', params: { :name => 'chilly', :age => 23, :breed => "cheshire" }
    @animal_id = JSON.parse(response.body)['id']
    delete "/api/v1/animals/#{@animal_id}"
  end

  it 'returns a success status' do
    expect(response).to have_http_status(:success)
  end

  it 'returns a success message' do
    expect(JSON.parse(response.body)['message']).to eq('This animal has been seccessfully adopted.')
  end
end