require 'rails_helper'

RSpec.describe Animal, type: :model do
  
  it { should validate_presence_of :name }
end
