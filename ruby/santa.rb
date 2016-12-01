class Santa

  attr_reader :ethnicity
  attr_accessor :gender, :age

  def initialize(gender, ethnicity)
    #print "Initializing Santa instance ..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def speak
    print "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(x)
    print "That was a good #{x}!" 
  end

  def celebrate_birthday
    @age += 1
  end

  def get_mad_at(deer_name)
    @reindeer_ranking.delete(deer_name)
    @reindeer_ranking.insert(-1, deer_name)
  end

end

=begin
tim = Santa.new("black", "male")
tim.speak
tim.eat_milk_and_cookies("spam")
print tim.celebrate_birthday
print tim.get_mad_at("Prancer")
print tim.gender = "other"
print tim.age
print tim.ethnicity
=end



#santas = []

=begin
santas << Santa.new("agender", "black")
santas << Santa.new("female", "Latino")
santas << Santa.new("bigender", "white")
santas << Santa.new("male", "Japanese")
santas << Santa.new("female", "prefer not to say")
santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
santas << Santa.new("N/A", "N/A")
=end

=begin
gen = ["male", "female", "other"]
eth = ["this", "that", "and the other"]

count = 3
span = 0
while span < count do 
  santas.push(Santa.new(gen[count], eth[count]))
  
  span += 1
end
=end

example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

10000.times do |x|
  x = Santa.new(example_genders[rand(6)], example_ethnicities[rand(6)]) 
  x.age = rand(140)
  puts ""
  print "Gender is #{x.gender}, ethnicity is #{x.ethnicity}, and age is #{x.age}"
  puts ""
end

