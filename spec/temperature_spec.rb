# frozen_string_literal: true

require_relative '../lib/terminal'
require_relative '../lib/converter'
require_relative '../lib/correctness'
require_relative '../lib/input'

describe Converter do
  describe 'c_to_f' do
    context 'c_to_f method check on correct value.' do
      let(:obj) { Converter.new }
      it '-10.1' do
        expect(obj.c_to_f(-10.1)).to eq 13.82
      end
      it '10.1' do
        expect(obj.c_to_f(10.1)).to eq 50.18
      end
      it '100' do
        expect(obj.c_to_f(100)).to eq(212)
      end
    end
  end
end

describe Converter do
  describe 'c_to_k' do
    context 'c_to_k method check on correct value.' do
      let(:obj) { Converter.new }
      it '-10.1' do
        expect(obj.c_to_k(-10.1)).to eq 263.05
      end
      it '10.1' do
        expect(obj.c_to_k(10.1)).to eq 283.25
      end
      it '100' do
        expect(obj.c_to_k(100)).to eq 373.15
      end
    end
  end
end

describe Converter do
  describe 'f_to_c' do
    context 'f_to_c method check on correct value.' do
      let(:obj) { Converter.new }
      it '-10.3' do
        expect(obj.f_to_c(-10.3)).to eq(-23.5)
      end
      it '10.4' do
        expect(obj.f_to_c(10.4)).to eq(-12)
      end
      it '14' do
        expect(obj.f_to_c(14)).to eq(-10)
      end
    end
  end
end

describe Converter do
  describe 'f_to_k' do
    context 'f_to_k method check on correct value.' do
      let(:obj) { Converter.new }
      it '-10.3' do
        expect(obj.f_to_k(-10.3)).to eq 249.65
      end
      it '10.4' do
        expect(obj.f_to_k(10.4)).to eq 261.15
      end
      it '14' do
        expect(obj.f_to_k(14)).to eq 263.15
      end
    end
  end
end

describe Converter do
  describe 'k_to_c' do
    context 'k_to_c method check on correct value.' do
      let(:obj) { Converter.new }
      it '-10.1' do
        expect(obj.k_to_c(-10.1)).to eq(-283.25)
      end
      it '10.1' do
        expect(obj.k_to_c(10.1)).to eq(-263.05)
      end
      it '100' do
        expect(obj.k_to_c(100)).to eq(-173.15)
      end
    end
  end
end

describe Converter do
  describe 'k_to_f' do
    context 'k_to_f method check on correct value.' do
      let(:obj) { Converter.new }
      it '-10.1' do
        expect(obj.k_to_f(-10.1)).to eq(-477.85)
      end
      it '10.1' do
        expect(obj.k_to_f(10.1)).to eq(-441.49)
      end
      it '100' do
        expect(obj.k_to_f(100)).to eq(-279.67)
      end
    end
  end
end

describe Terminal do
  describe 'initialtext' do
    it 'Terminal.initialtext' do
      expect do
        Terminal.initialtext
      end.to output("Temperature converter\n").to_stdout
    end
  end
  describe 'getfrom' do
    it 'Terminal.getfrom' do
      expect do
        Terminal.getfrom
      end.to output("Enter from (c, f, k)\n").to_stdout
    end
  end
  before do
    $stdin = StringIO.new('Ab')
  end
  describe 'getto' do
    it 'Terminal.getto' do
      expect do
        Terminal.getto
      end.to output("Enter to (c, f, k)\n").to_stdout
    end
  end
  before do
    $stdin = StringIO.new('Ab')
  end
  describe 'getvalue' do
    it 'Terminal.getvalue' do
      expect do
        Terminal.getvalue
      end.to output("Enter temperature value\n").to_stdout
    end
  end
  before do
    $stdin = StringIO.new('Ab')
  end
  describe 'quitprogram' do
    it 'Terminal.quitprogram' do
      expect do
        Terminal.quitprogram
      end.to output("if you want quit enter \"y\" otherwise enter anything\n").to_stdout
    end
  end
  before do
    $stdin = StringIO.new('Ab')
  end
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

describe Input do
  describe 'initialize' do
    input = Input.new
    it 'Correctness.temperature' do
      expect(input.value).to eq(0.0)
    end
  end
end
