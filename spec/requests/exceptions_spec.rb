require 'rails_helper'

describe 'exception handlers', :type => :request do
  let!(:animals) {FactoryBot.create_list(:animal, 20)}
  
  before { get '/api/v1/animals/21'}
  
  it "returns a concise message as a reponse if a RecordNotFound error occurs." do 
    expect(JSON.parse(response.body)['message']).to eq( "Couldn't find Animal with 'id'=21")
  end
  
end