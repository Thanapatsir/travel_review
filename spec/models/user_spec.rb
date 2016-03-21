require 'rails_helper'

RSpec.describe User, type: :model do
  before(:each) do
    @user1 = User.new(email: "thanapat@gmail.com", password: "12345678", password_confirmation: "12345678")
  end
  it "email cannot be blank" do
    @user1.email = ""
    expect(@user1.save).to be(false)
  end

  it "password cannot be blank" do
    @user1.password = ""
    expect(@user1.save).to be(false)
  end

  it "password_cannot be blank" do
    @user1.password_confirmation = ""
    expect(@user1.save).to be(false)
  end
end
