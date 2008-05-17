module ActionView
  module Helpers
    module TagHelper
      include ClassyInputs
      alias_method_chain(:tag, :input_class_name)
    end
  end
end
