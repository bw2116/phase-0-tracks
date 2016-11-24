=begin
  * declare an empty hash
  * prompt user for client info
    - client name (string)
    - client age (integer)
    - has children (boolean)
    - decor (string)

  * assign input values to symbols
  * print hash
  * prompt for updates
  * print updated hash
=end

client = {}

puts "Enter client name"
name = gets.chomp

puts "Enter client age"
age = gets.chomp

puts "Does the Client have children (enter y for yes and n for no)"
children = gets.chomp

puts "Enter decor style"
decor = gets.chomp

client [:name] = name
client [:age] = age
client [:children] = children
client [:decor] = decor

p client

puts "Would you like to update any information? (enter y to update)"
answer = gets.chomp

if answer == "y"
  puts "Please update the client's name?"
  name_update = gets.chomp  
  if name_update == "none"
    
  else
    client [:name] = name_update
  end

  puts "Please update the client's age?"
  age_update = gets.chomp
  if age_update == "none"
    
  else
    client [:age] = age_update
  end

  puts "Please update the client's children status?"
  children_update = gets.chomp
  if children_update == "none"
    
  else
    client [:children] = children_update
  end

  puts "Please update the client's decor style"
  decor_update = gets.chomp
  if decor_update == "none"
      
  else 
    client [:decor] = decor_update
  end
end

p client