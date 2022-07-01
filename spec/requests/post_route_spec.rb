require 'rails_helper'

describe 'post route', :type => :request do

  before do
    post '/api/v1/animals', params: { :name => 'garfield', :age => 2, :breed => "tabby" }
  end

  it 'returns the animals name' do
    expect(JSON.parse(response.body)['name']).to eq('Garfield')
  end

  it 'returns the animals age' do
    expect(JSON.parse(response.body)['age']).to eq(2)
  end

  it 'returns the animals breed' do 
    expect(JSON.parse(response.body)['breed']).to eq('tabby')
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end
end