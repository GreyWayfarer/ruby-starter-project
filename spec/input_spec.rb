# frozen_string_literal: true

require_relative '../lib/input'

describe Input do
  describe 'initialize' do
    input = Input.new
    it 'Correctness.temperature' do
      expect(input.value).to eq(0.0)
    end
  end
end
