require 'rails_helper'

describe Entity, type: :model do
  subject do
    @person = User.new(password: 'nemwel123', email: 'nemwel@gmail.com')
    @grp = Group.new(name: 'test', user_id: @person)
    @entitty = Entity.new(name: 'fruits', amount: 20, user_id: @person, group_id: @grp)
  end

  before { subject.save }

  it 'subject should be valid' do
    expect(subject).to_not be_valid
  end

  it 'Entity name should be present' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'category should be present' do
    subject.group_id = nil
    expect(subject).to_not be_valid
  end
end
