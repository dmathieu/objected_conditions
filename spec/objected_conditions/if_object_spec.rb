require 'spec_helper'

describe ObjectedConditions::IfObject do
  
  describe "initialize" do
    it "should succeed to initialize the object" do
      lambda do
        ObjectedConditions::IfObject.new(Object.new) {}
      end.should_not raise_error
    end
  end
  
  describe "the if" do
    it "should just work" do
      (true == true).if do |r|
        r.should eql(true)
        "hello world"
      end.should eql('hello world')
    end
  end
end