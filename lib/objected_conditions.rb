module ObjectedConditions
  autoload :Base, 'objected_conditions/base'
  autoload :Common, 'objected_conditions/common'
  autoload :IfObject, 'objected_conditions/if_object'
  autoload :UnlessObject, 'objected_conditions/unless_object'
  autoload :ElseObject, 'objected_conditions/else_object'
  
  
end

Object.class_eval do
  include ObjectedConditions::Base
end