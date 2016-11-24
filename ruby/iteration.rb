def days_off
  day1 = "Tuesday"
  day2 = "Wednesday"
  puts "What days do you have off?"
  yield(day1, day2)
end

puts " "
days_off {|day1, day2| puts "I have #{day1} and #{day2} off."}

week_days = [
  "Monday",
  "Tuesday",
  "Wednesday",
  "Thursday",
  "Friday"
]
puts " "

best_actors = {
  Jack_Nicholson: "The Shining",
  Ralph_Fiennes: "Harry Potter and the Deathly Hallows: Part 2",
  Daniel_Day_Lewis: "There Will Be Blood",
  Robert_De_Niro: "Goodfellas",
  Al_Pacino: "The Godfather"
}

week_days.each do |day|
  puts "the days of the week are #{day}"
end
puts " "

best_actors.each do |actor, movie|
  puts "#{actor} was best in #{movie}"
end
puts " "

p week_days
week_days.map! do |day|
  day.next
end
p week_days
puts " "

numbers = [
  1, 2, 3, 4, 5, 6, 7, 8, 9, 10
]
numbers.delete_if{|number| number > 5}
puts " "

numbers = [
  1, 2, 3, 4, 5, 6, 7, 8, 9, 10
]
numbers.keep_if{|number| number > 5}
puts " "

numbers = [
  1, 2, 3, 4, 5, 6, 7, 8, 9, 10
]
numbers.reject{|number| number < 5}
puts " "

numbers = [
  1, 2, 3, 4, 5, 6, 7, 8, 9, 10
]
numbers.take_while{|number| number < 3}
puts " "

dogs = {
  pitbull: "Penny",
  grey_hound: "Stephon",
  puddle: "Bo",
  dotson: "Pete"
}
dogs.delete_if{|dog, name| name.length < 5}
puts " "

dogs = {
  pitbull: "Penny",
  grey_hound: "Stephon",
  puddle: "Bo",
  dotson: "Pete"
}
dogs.keep_if{|dog, name| name.length > 5}
puts " "

dogs = {
  pitbull: "Penny",
  grey_hound: "Stephon",
  puddle: "Bo",
  dotson: "Pete"
}
dogs.reject{|dog, name| dog.length < 7}
puts " "

dogs = {
  pitbull: "Penny",
  grey_hound: "Stephon",
  puddle: "Bo",
  dotson: "Pete"
}
dogs.take_while{|dog, name| dog.length < 5 && name.length > 3}
puts " "