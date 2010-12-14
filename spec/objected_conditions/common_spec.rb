require 'spec_helper'

class SpecObjectWithIncludedCommon
  include ObjectedConditions::Common
end

describe ObjectedConditions::Common do
  
  describe "initialize" do
    it "should succeed to initialize the object" do
      lambda do
        SpecObjectWithIncludedCommon.new(Object.new) {}
      end.should_not raise_error
    end
  end
  
  describe "resolve" do
    it "should return the result of the block" do
      SpecObjectWithIncludedCommon.new(false) do
        "testing"
      end.resolve.should eql('testing')
    end
    
    it "should add the else to the result" do
      SpecObjectWithIncludedCommon.new(false) do
        "testing"
      end.resolve.should respond_to(:else)
    end
  end
  
  describe "extend_object" do
    it "should add the else method to the object" do
      spec = SpecObjectWithIncludedCommon.new(Object.new) {}
      spec.send(:extend_object, Object.new).should respond_to(:else)
    end
  end
end