require 'sqlite3'
require 'faker'

db = SQLite3::Database.new("meals.db")
db.results_as_hash = true

create_table = <<-SQL
  create table if not exists meals(
    id integer primary key,
    food varchar(255),
    day varchar(255)
  )
SQL

db.execute(create_table)

def create_meal(db, food, day)
  db.execute("insert into meals (food, day) VALUES (?, ?)", [food, day])
end

=begin
def get_meals
  meals = db.execute("SELECT * FROM meals")
  meals.each do |meal, day|
    puts "Your ate #{meal['food']} on #{meal['day']}"
  end
end
=end
def get_meals 
  db = SQLite3::Database.new("meals.db")
  meals = <<-SQL
    select * from meals
  SQL
  results = db.execute(meals)
  results.each do |x, y, z|
    puts "You at #{y} on #{z}" 
  end
end
=begin
10000.times do
  create_meal(db, "Sweet Potato", "Tuesday")
end
=end


#puts "Press 1 to enter a meail or 2 to retreive your meals"
#answer = gets.chomp.to_i

answer = 3

while answer != 0

  puts "Press 1 to enter a meail or 2 to retreive your meals or 0 to exit"
  answer = gets.chomp.to_i

  if answer == 1 
    puts "Please enter your meal"
    meal_eaten = gets.chomp

    puts "Please enter the day your meai was eaten"
    day_eaten = gets.chomp

    create_meal(db, meal_eaten, day_eaten)
  elsif answer == 2
    get_meals
  end
end