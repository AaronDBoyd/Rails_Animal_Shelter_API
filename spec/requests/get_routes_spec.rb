require 'rails_helper'

describe "get all animals route", :type => :request do
  let!(:animals) { FactoryBot.create_list(:animal, 20)}

  before { get '/api/v1/animals' }

  it 'returns all animals' do
    puts JSON.parse(response.body).class
    expect(JSON.parse(response.body).size).to eq(20)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end

describe "get an animal route", :type => :request do

  before { @test = Animal.create(name: "test_name", age: 69, breed: "test_breed")}

  it 'gets animal by id' do
    get "/api/v1/animals/#{@test.id}"
    response_array = []
    response_array << JSON.parse(response.body)
    puts JSON.parse(response.body).class
    expect(response_array.size).to eq(1)
  end
end