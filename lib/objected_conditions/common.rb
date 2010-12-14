module ObjectedConditions
  module Common
    
    def self.included(klass)
      klass.class_eval do
        attr_reader :object, :block, :condition

        def initialize(object, &block)
          @object, @block = object, block
        end
        
        def resolve
          extend_object _resolve
        end
        
        private
        def extend_object(o)
          if o
            o.instance_eval do
              def else(&block)
                self
              end
            end
            return o
          else
            return ObjectedConditions::ElseObject.new(object, @condition)
          end
        end
        
        def _resolve
          return block.call(object) if (condition && object) || (!condition && !object)
          false
        end
      end
    end
  end
end