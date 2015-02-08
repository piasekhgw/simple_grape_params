module Grape
  class API
    def self.validate_params_with(klass)
      params(&klass.instance_variable_get(:@validation_block))
    end
  end
end
