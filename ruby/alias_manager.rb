=begin 
  * Split the first and lat name
  * Assign the first and last names to variables
  * Combine names in reverse order

=end 
fake_names = []
fakes = []
loop do 
  #name = 'Felicia Torres'.split(' ')
  puts " "
  puts "Enter a First and Last name"
  name = gets.chomp
  if name == 'exit'
    fake_names.each do |fake|
      fakes<< fake
    end
    print "The fake names are #{fakes.join}, "
  exit
  end
  name = name.split(' ')
  fname = name[1]
  lname = name[0]
  full_name = fname + ' ' + lname
  full_name.each_char {|c|
    new_name = ''
    if c == 'a'
      #new_name.push('e')
      c = 'e'
      new_name = new_name + c
    elsif c == 'e'
      #new_name.push('i')
      c = 'i'
      new_name = new_name + c
    elsif c == 'i'
      #new_name.push('o')
      c = 'o'
      new_name = new_name + c
    elsif c == 'o'
      #new_name.push('u')
      c = 'u'
      new_name = new_name + c
    elsif c == 'u'
      #new_name.push('a')
      c = 'a'
      new_name = new_name + c
    elsif c == " "
      #new_name.push(" ")
      c = ' '
      new_name = new_name + c
    else
      #new_name.push(c.next)
      new_name = new_name + c.next
    end
    print new_name.to_s
    fake_names.push(new_name)
  }
  puts " "
end

