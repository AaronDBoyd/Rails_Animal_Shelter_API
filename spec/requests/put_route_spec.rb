require 'rails_helper'

describe 'update an animal route', :type => :request do

  before do
    post '/api/v1/animals', params: { :name => 'frank', :age => 21, :breed => 'wolf' }
    @animal_id = JSON.parse(response.body)['id']
    put "/api/v1/animals/#{@animal_id}", params: { :name => 'mr. frank', :age => 26 }
  end

  it 'updates the animals name' do 
    expect(JSON.parse(response.body)['name']).to eq('Mr. Frank')
  end

  it 'updates the animals age' do
    expect(JSON.parse(response.body)['age']).to eq(26)
  end

  it 'returns a success status' do
    expect(response).to have_http_status(:success)
  end
end