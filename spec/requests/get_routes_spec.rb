require 'rails_helper'

describe 'get animals route' :type => :request do
  let!(:animals) { FactoryBot.create_list(:animal, 20)}

end