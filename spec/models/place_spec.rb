require 'rails_helper'

RSpec.describe Place, type: :model do
  before(:each) do
    @place1 = Place.new(title: "Hua-hin", description: "good place", rating: "recommend")
  end
  it "title cannot be blank" do
    @place1.title = ""
    expect(@place1.save).to be(false)
  end

  it "description cannot be blank" do
    @place1.description = ""
    expect(@place1.save).to be(false)
  end

  it "rating cannot be blank" do
    @place1.title = ""
    expect(@place1.save).to be(false)
  end

end
