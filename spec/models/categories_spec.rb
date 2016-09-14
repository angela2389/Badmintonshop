require "rails_helper"

describe "When a category is created" do
  it "it saved its name" do
    category1 = Category.create( name: "Shuttles")

    assert(category1.name == "Shuttles")
  end
end
