require 'rails_helper'

RSpec.describe Group, type: :model do
  before :each do
    @person = User.new(password: 'nemwel123', email: 'nemwel@gmail.com')
    @person.save
  end

  subject do
    @grp = Group.new(name: 'test', user_id: @person)
  end
  before { subject.save }

  it 'subject should be valid' do
    expect(subject).to_not be_valid
  end

  describe 'validate data' do
    it 'it should have a name' do
      subject.name = nil
      expect(subject).to_not be_valid
    end

    it 'should have an icon image' do
      subject.icon = nil
      expect(subject).to_not be_valid
    end
  end
end
