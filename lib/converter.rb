#!/usr/bin/env ruby
# frozen_string_literal: true

# Description/Explanation of Converter class
class Converter
  attr_accessor :value

  def initialize
    @value = 0.0
  end

  def c_to_f(value)
    ((value * 1.8) + 32).round(2)
  end

  def c_to_k(value)
    (value + 273.15).round(2)
  end

  def f_to_k(value)
    (((value - 32) / 1.8) + 273.15).round(2)
  end

  def f_to_c(value)
    ((value - 32) / 1.8).round(2)
  end

  def k_to_f(value)
    (((value - 273.15) * 1.8) + 32).round(2)
  end

  def k_to_c(value)
    (value - 273.15).round(2)
  end
end
