require("rspec")
require("Place")

describe(Place) do
  describe("#location") do
    it("will return the location") do
    test_desc = Place.new("Hawaii")
    expect(test_desc.location()).to(eq("Hawaii"))
    end
  end

  describe(".all") do
    it("it will create an empty array") do
      expect(Place.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("will save the location to the array") do
      test_desc = Place.new("Hillsboro")
      test_desc.save()
      expect(Place.all()).to(eq([test_desc]))
    end
  end

  describe(".clear") do
    it("it will clear all locations") do
      Place.new("Tibet").save()
      Place.clear()
      expect(Place.all()).to(eq([]))
    end
  end
end
