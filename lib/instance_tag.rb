module ActionView
  module Helpers
    class InstanceTag
      include ClassyInputs
      alias_method_chain(:tag, :input_class_name)
    end
  end
end
