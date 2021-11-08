require_relative './terminal'
require_relative './input'
require_relative './correctness'
require_relative './converter'

class TemperatureConverter
  def self.start
    input = Input.new
    temperature = Converter.new
    Terminal.initialtext
    loop do
      input.from = Terminal.getfrom
      input.to = Terminal.getto
      input.value = Terminal.getvalue
      next unless Correctness.temperature(input)

      result = temperature.public_send("#{input.from}_to_#{input.to}", input.value.to_f)
      puts result
      quit = Terminal.quitprogram
      break if quit == 'y'
    end
  end
end
