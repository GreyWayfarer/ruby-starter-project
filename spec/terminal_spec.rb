# frozen_string_literal: true

require_relative '../lib/terminal'

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
end
