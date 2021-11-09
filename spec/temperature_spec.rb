# frozen_string_literal: true

require_relative '../lib/correctness'

describe Correctness do
  describe 'temperature' do
    input = Input.new
    input.value = '1.0'
    input.to = 'c'
    input.from = 'f'
    it 'Correctness.temperature' do
      expect(Correctness.temperature(input)).to eq(true)
    end
  end
  describe 'temperature' do
    input = Input.new
    input.value = '1a'
    input.to = 'c'
    input.from = 'f'
    it 'Correctness.temperature' do
      expect(Correctness.temperature(input)).to eq(false)
    end
  end
  describe 'temperature' do
    input = Input.new
    input.value = '1'
    input.to = 'c'
    input.from = 'c'
    it 'Correctness.temperature' do
      expect(Correctness.temperature(input)).to eq(false)
    end
  end
  describe 'temperature' do
    input = Input.new
    input.value = '1'
    input.to = 'c1asfa'
    input.from = 'c'
    it 'Correctness.temperature' do
      expect(Correctness.temperature(input)).to eq(false)
    end
  end
  describe 'temperature' do
    input = Input.new
    input.value = '1'
    input.to = 'c'
    input.from = 'ff'
    it 'Correctness.temperature' do
      expect(Correctness.temperature(input)).to eq(false)
    end
  end
end
