class Puppy

  def initialize
    print "Initializing new puppy instance ..."
    puts ""
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(n)
    n.to_i.times {print "Woof! "}
    puts " "
  end 

  def roll_over
    print "rolls over"
    puts " "
  end

  def hungry
    puts "Feed Me!"
  end

end

class Kitten

  def initialize
    #print "Initializing a new kitten instance ..."
    #puts ""
  end

  def purr
    puts "PURRRING!!!"
  end

  def feed_me
    puts "I'll have what the puppy's having!"
  end

end

fido = Puppy.new
fido.fetch("plastic ball")
fido.speak(3)
fido.roll_over
fido.hungry

count = 0
my_array = []
50.times do
  s = "kitten#{count}" 
  s = Kitten.new
  my_array.push(s)
  count +=1
  #puts my_array[count].inspect
  end
  
  my_array.each do |x|
    print x.purr
    print x.feed_me
    puts ""
  end