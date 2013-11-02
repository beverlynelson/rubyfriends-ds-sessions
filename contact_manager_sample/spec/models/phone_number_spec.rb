require 'spec_helper'

describe PhoneNumber do
  let(:phone_number) {PhoneNumber.new( "number" => "1112223333", "person_id" => 1 ) }
  
  it 'is valid' do
    expect(phone_number).to be_valid
  end

  it 'must have a reference to a person' do
    phone_number.person_id = nil
    expect(phone_number).to_not be_valid
  end
  
  it 'is invalid without a number' do
    phone_number.number = nil
    expect(phone_number).to_not be_valid
  end

  it 'is associated with a person' do
    expect(phone_number).to respond_to(:person)
  end
end
