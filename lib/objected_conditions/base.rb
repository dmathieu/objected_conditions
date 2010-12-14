module ObjectedConditions
  module Base
    def self.included(klass)
      klass.class_eval do
        
        def if(&block)
          IfObject.new(self, &block).resolve
        end
        
        def unless(&block)
          UnlessObject.new(self, &block).resolve
        end
      end
    end
  end
end