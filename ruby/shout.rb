module Shout
  def yell(words)
    words.upcase + "!!!"
  end

  def yelling_happily
    puts "NOW YOU'RE MAKING ME HAPPY!"
  end
end
=begin
module Shout

  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily
    puts "NOW I'M HAPPY!!!'"
  end

end
=end

class Coach
  include Shout
end

class Trainer
  include Shout
end

ted = Coach.new
print ted.yell("Run Faster") + "\n"
ted.yelling_happily

patti = Trainer.new
print patti.yell("Do you feel the burn") + "\n"
patti.yelling_happily