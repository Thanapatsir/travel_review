require 'rails_helper'

RSpec.describe Review, type: :model do
  before(:each) do
    @review1 = Review.new(comment: "test comment", rating: "4")
  end
  it "comment cannot be blank" do
    @review1.comment = ""
    expect(@review1.save).to be(false)
  end

end
