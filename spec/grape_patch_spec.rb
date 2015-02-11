require 'grape'
require 'simple_grape_params/validator'
require 'simple_grape_params/grape_patch'

class TestValidator < SimpleGrapeParams::Validator
  params do
    'test'
  end
end

describe Grape::API do
  describe '.validate_params_with' do
    before { allow(described_class).to receive(:params) }
    it "invokes 'params' method with validator's block" do
      expect(described_class).to receive(:params) do |&block|
        expect(block.call).to eq('test')
      end
      described_class.validate_params_with(TestValidator)
    end
  end
end
