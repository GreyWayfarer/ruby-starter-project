require_relative './input'

class Correctness < Input
  # input = Input.new
  def self.temperature(input)
    param = true
    reg_str = '^[c,f,k]$'
    reg_digit = '^[-]?[0-9]+([.][0-9]+)?$'
    unless input.value.match(reg_digit)
      puts 'incorrect value'
      param = false
    end
    unless input.from.match(reg_str)
      puts 'incorrect from'
      param = false
    end
    unless input.to.match(reg_str)
      puts 'incorrect to'
      param = false
    end
    if input.to == input.from
      puts 'TO and FROM do cannot be the same'
      param = false
    end
    param
  end
end
