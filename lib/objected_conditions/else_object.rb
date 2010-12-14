module ObjectedConditions
  class ElseObject
    attr_reader :object, :condition
    
    def initialize(object, condition)
      @object, @condition = object, condition
    end
    
    def else(&block)
      block.call(object)
    end
  end
end