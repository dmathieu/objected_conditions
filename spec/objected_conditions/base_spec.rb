require 'spec_helper'

describe ObjectedConditions::Base do
  
  describe "#if" do
    it "should make any object respond to if" do
      Object.new.should respond_to(:if)
    end
  end
  
  describe "#unless" do
    it "should make any object repond to unless" do
      Object.new.should respond_to(:unless)
    end
  end
end