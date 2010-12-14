module ObjectedConditions
  class IfObject
    include Common
    alias :old_initialize :initialize
    
    def initialize(object, &block)
      old_initialize(object, &block)
      @condition = true
    end
  end
end