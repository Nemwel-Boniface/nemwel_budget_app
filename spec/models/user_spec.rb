require 'rails_helper'

RSpec.describe User, type: :model do
  before(:each) { @person = User.new(password: 'nemwel123', email: 'nemwel@gmail.com') }
  it 'name should be present' do
    expect(@person).to_not be_valid

    @person.name = 'Nemwel'
    expect(@person).to be_valid
  end

  it 'password should be present' do
    expect(@person).to_not be_valid
    @person.password = nil
    expect(@person).to_not be_valid
  end

  it 'email should be present' do
    expect(@person).to_not be_valid
    @person.email = nil
    expect(@person).to_not be_valid
  end
end
