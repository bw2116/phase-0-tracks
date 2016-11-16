puts "What's the hamster's name?"
name = gets.chomp
puts "What volume level (1 to 10)?"
volume = gets.chomp
volume.to_i
puts "Enter the fur color"
fur = gets.chomp
puts "Press y for good canidate and n for bad canidate?"
canidate = gets.chomp 
puts "Enter estimated age"
age = gets.chomp

if (canidate == "n")
  canidate = false
elsif (canidate == "y")
  canidate = true
end

if (age == "")
  age = nil
end

puts nil
puts "So #{name} has a volume level of #{volume} with #{fur} colored fur; is a good canidate? #{canidate} and is #{age} years old."