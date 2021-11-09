require_relative './input'

class Correctness < Input
  def self.temperature(input)
    param = true
    reg_str = '^[c,f,k]$'
    reg_digit = '^[-]?[0-9]+([.][0-9]+)?$'
    unless input.value.match(reg_digit)
      puts 'incorrect temperature value, use numbers from 0 to 9'
      param = false
    end
    unless input.from.match(reg_str)
      puts 'incorrect from, enter other symbol from c,f,k'
      param = false
    end
    unless input.to.match(reg_str)
      puts 'incorrect to, enter other symbol from c,f,k'
      param = false
    end
    if input.to == input.from
      puts 'TO and FROM do cannot be the same, enter other symbol from c,f,k'
      param = false
    end
    param
  end
end
