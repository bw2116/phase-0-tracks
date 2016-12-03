# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # read input of items and place them into a hash
  # set default quantity
  # print the list to the console [can you use one of your other methods here?] - the print list method
# output: [what data type goes here, array or hash?] ha

# Method to add an item to a list
# input: item name and optional quantity
# steps:
# output:

# Method to remove an item from the list
# input:
# steps:
# output:

# Method to update the quantity of an item
# input:
# steps:
# output:

# Method to print a list and make it look pretty
# input:
# steps:
# output:

$list = Hash.new
$default = 0

def create_list(items)
  $list = Hash.new
  #single_item = string_of_items.split(" ")
    $list[items] = $default
  print_list
end

def add_item(new_item, new_qty = $default)
  $list[new_item] = new_qty
  print_list
end

def remove_item(remove)
  $list.delete_if{|key, value| key >= remove}
end

def update_qty(k, q)
  $list[k] = q
  print_list
end

def print_list
  count = 0
  $list.each do |x, y|
    puts "There are #{y} #{x}s"
  end
end

#create_list("text1 text2 text3")
#puts "List after create_list #{$list}"
#add_item("text5", 20)

#add_item("text4")
#puts "List after add_item #{$list}"

#remove_item("text4")
#puts "List after remove_item #{$list}"

#update_qty("text1", 8)
#puts "List after update_qty #{$list}"


create_list("Lemonade")
update_qty("Lemonade", 2)

create_list("Tomatoes")
update_qty("Tomatoes", 3)

create_list("Onions")
update_qty("Onions", 1)

create_list("Ice Cream")
update_qty("Ice Cream", 4)