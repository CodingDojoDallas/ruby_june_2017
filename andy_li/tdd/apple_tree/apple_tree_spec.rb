require_relative "apple_tree"

RSpec.describe AppleTree do
  before(:each) do
    # apple_tree with age = 1, height = 10, apple_count = 0
    @apple_tree = AppleTree.new(3, 10, 0)
  end

  describe "Apple Tree attributes" do
    it "has an age attribute with getter and setter methods" do
      expect(@apple_tree.age).to eq(3)
      @apple_tree.age = 2
      expect(@apple_tree.age).to eq(2)
    end

    it "has a height attribute with only a getter method and raise a NoMethodError if height attribute is set directly" do
      expect(@apple_tree.height).to eq(10)
      expect{@apple_tree.height = 15}.to raise_error(NoMethodError)
    end

    it "has an apple count attribute with only a getter method and raise a NoMethodError if apple count attribute is set directly" do
      expect(@apple_tree.apple_count).to eq(0)
      expect{@apple_tree.apple_count = 6}.to raise_error(NoMethodError)
    end
  end

  describe "Apple Tree methods" do
    it "has a year_gone_by method that adds one year to the age attribute, increases height by 10% of its current height, raises its apple count by two" do
      @apple_tree.year_gone_by
      expect(@apple_tree.age).to eq(4)
      expect(@apple_tree.height).to eq(11)
      expect(@apple_tree.apple_count).to eq(2)
    end

    it "should not grow apples for the first three years of its life" do
      @apple_tree.age = 2
      @apple_tree.year_gone_by
      expect(@apple_tree.apple_count).to eq(0)
    end

    it "has a pick_apples method that takes all apples off tree" do
      @apple_tree.pick_apples
      expect(@apple_tree.apple_count).to eq(0)
    end

    it "should not grow apples if it's older than ten" do
      @old_apple_tree = AppleTree.new(10, 110, 100)
      @old_apple_tree.year_gone_by
      expect(@old_apple_tree.apple_count).to eq(100)
    end
  end





end
