require 'rails_helper'

RSpec.describe User, :type => :model do

  it 'should be valid with first & last name, email' do
  	@user = create(:user)
  	expect(@user).to be_valid
  end

  it 'should be invalid without a last name' do
  	@user = build(:user, last_name: nil)
  	expect(@user).to be_invalid
  end

  it 'should be invalid if not correct email' do
  	@user = build(:user, email: 'tilda.com')
  	@user2 = build(:user, email: 'tilda@@tilda.com')
  	expect(@user).to_not be_valid
  	expect(@user2).to_not be_valid
  end

  it 'should be invalid if password is not entered' do 
  	@user = build(:user, password: nil)
  	expect(@user).to_not be_valid
  end

  it 'should be invalid if passwords do not match' do 
  	@user = build(:user, password_confirmation: '654321')
  	expect(@user).to_not be_valid
  end

end
