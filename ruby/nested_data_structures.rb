office = {
  'desk' => [
    'pencil',
    'pen',
    'tape'
  ],
  'table' => [
    'books',
    'papers'
  ],
  'chair' => [

  ],
  'computers' => [
    'software', 
    'keyboard', 
    'optical drive'
  ]
}

puts "To write you need a #{office['desk'][1]} or a #{office['desk'][0]}."
puts "But if you are a programmer you could use #{office['computers'][1]} to type instead."