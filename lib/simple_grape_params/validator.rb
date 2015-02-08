module SimpleGrapeParams
  class Validator
    def self.params(&block)
      @validation_block = block
    end
  end
end
