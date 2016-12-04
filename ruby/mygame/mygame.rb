class Mygame
  attr_accessor :secret_word, :loser, :guessed_letters, :guessed_letter, :dash

  def initialize
    @secret_word = ""
    @dashes = []
    @attempts = 0
    @guessed_letter = ""
    @guessed_letters = []
    @game_over = false
    @dash_index = 0
    @p_letter = []
    @looser = 0
    @winner = 0
  end

# Add letter method start
  def add_letters(x)
    if @guessed_letters.include?(x)
      puts "Letter already tried"
    else
      @guessed_letters << x
      @attempts += 1
      print_dashes
      lost
      #puts "Guessed letters are #{@guessed_letters}"
    end
  end
# Add letter method end

# Compare letter method start
  def compare_letter(x) 
    if @secret_word.include?(x)
    end
  end
# Compare letter method end


# Print dashes method start 
  def print_dashes
    letter = @guessed_letter
    secret_word_array = @secret_word.split("")
    secret_word_array.each do |x|
      if x == letter
        @p_letter.push(letter)
        win
      else
        @p_letter.push(x.replace("-"))
      end
    end
    p_letter_compat = @p_letter.join(",")
    print p_letter_compat
# Print dashes method end
  end
# Loser method start
  def lost
    if @looser == @secret_word.length
      @game_over = true
      puts "So sorry but you loose!"
      exit
    else
      @looser += 1
    end
  end
# Loser method end

# Winner method start
  def win
    if @winner == @secret_word.length - 1
      @game_over = true
      puts "CONGRATULATIONS, YOU ARE A WINNER!!!"
      exit
    else
      @winner += 1
    end
  end
# Winner method end

end


# user interface

game = Mygame.new

puts "User 1 please enter a word"
game.secret_word = gets.chomp

while !@game_over
  puts "User 2 please enter a letter"
  game.guessed_letter = gets.chomp

# DELETE LINES BELOW THIS
  if game.guessed_letter == "q"
    exit
  end
# DELETE LINES ABOVE THIS

  game.add_letters(game.guessed_letter)
 
end

