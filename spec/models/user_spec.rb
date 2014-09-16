require 'rails_helper'

RSpec.describe User, :type => :model do
  it "should be not be valid if firstname not given" do
    user = FactoryGirl.build(:user_invalid)
    expect(user).to_not be_valid
  end
  it "should be  valid if all fields are given" do
    user = User.create(firstname: 'basil', email: 'bvb32@gmail.com', password: 'basil123456')
    expect(user).to be_valid
  end
end
