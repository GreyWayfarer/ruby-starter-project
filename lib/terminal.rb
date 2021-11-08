class Terminal
  def self.initialtext
    puts "Temperature converter\n"
  end

  def self.getfrom
    puts "Enter from (c, f, k)\n"
    gets.chomp
  end

  def self.getto
    puts "Enter to (c, f, k)\n"
    gets.chomp
  end

  def self.getvalue
    puts "Enter temperature value\n"
    gets.chomp
  end

  def self.quitprogram
    puts "if you want quit enter \"y\" otherwise enter anything\n"
    gets.chomp
  end
end
