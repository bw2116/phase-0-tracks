puts "Please enter a number"
number = gets.chomp.to_i

number.times do
  puts "What is your name?"
  name = gets.chomp

  puts "How old are you?"
  age = gets.chomp
  age = age.to_i

  puts "What year were you born?"
  year = gets.chomp.to_i

  puts "Our company cafeteria serves garlic bread. Should we order some for you (y for yes, n for no)?"
  garlic = gets.chomp

  puts "Would you like to enroll in the company’s health insurance (y for yes, n for no)?"
  insurance = gets.chomp

  if ((2016 - year) == age && garlic == "y" || insurance == "y")
    result = "Probably not a vampire."
  elsif ((2016 - year) != age && garlic == "n" || insurance == "n")
    result = "Probably a vampire."
  elsif ((2016 - year) != age && garlic == "n" && insurance == "n")
    result = "Almost certainly a vampire."
  elsif (name == "Drake Cula" || name == "Tu Fang")
    result = "Definitely a vampire."
  else
    puts "Results inconclusive."
  end
end

allergies = ""
while allergies != "done"
  puts "Please list your allergies (enter done when finished)"
  allergies = gets.chomp


  if (allergies == "sunshine")
    result = "Probably a vampire."
    break
  end
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."