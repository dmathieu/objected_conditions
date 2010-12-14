require 'spec_helper'

describe ObjectedConditions::UnlessObject do
  
  describe "initialize" do
    it "should succeed to initialize the object" do
      lambda do
        ObjectedConditions::ElseObject.new(Object.new, true) {}
      end.should_not raise_error
    end
  end
  
  describe "the else" do
    it "should just work" do
      (true == false).if do |r|
        raise "The if should not be executed"
      end.else do |r|
        r.should eql(false)
        "hello world"
      end.should eql('hello world')
    end
    
    it "should execute the if" do
      (true == true).if do |r|
        r.should eql(true)
        'hello world'
      end.else do |r|
        raise "the else should not be executed"
      end.should eql('hello world')
    end
  end
end