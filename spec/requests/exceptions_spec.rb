require 'rails_helper'

describe 'exception handlers', :type => :request do
  let!(:animals) {FactoryBot.create_list(:animal, 20)}
  
  it "returns a concise message as a reponse if a RecordNotFound error occurs." do 
    get '/api/v1/animals/21'
    expect(JSON.parse(response.body)['message']).to eq( "Couldn't find Animal with 'id'=21")
  end
  
  it "returns a concise message as a reponse if a RecordInvalid error occurs." do 
    post '/api/v1/animals', params: { :name => 'scooby'}
    expect(JSON.parse(response.body)['message']).to eq("Validation failed: Age can't be blank, Breed can't be blank")
  end
end