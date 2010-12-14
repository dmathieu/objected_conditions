require 'spec_helper'

describe ObjectedConditions::UnlessObject do
  
  describe "initialize" do
    it "should succeed to initialize the object" do
      lambda do
        ObjectedConditions::UnlessObject.new(Object.new) {}
      end.should_not raise_error
    end
  end
  
  describe "the unless" do
    it "should just work" do
      (true == false).unless do |r|
        r.should eql(false)
        "hello world"
      end.should eql('hello world')
    end
  end
end