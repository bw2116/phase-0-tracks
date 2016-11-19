=begin
  1. find how many letters are in the string
  2. check to see if the character is a space
  3. step through each letter and increment it by one
=end

def encrypt(a)
  letters = 0

  while letters < a.length
    if a[letters] == " "
      print " "
      letters += 1
    elsif a[letters] == "z"
      print "a"
      letters += 1
    else
      print a[letters].next
      letters +=1
    end
  end
end


=begin 
  1. find out how many letters are in the string
  2. check to see if the character is a space 
  3. find the location of the letter in the alphabet
  4. find the letter to the right
=end

def decrypt(b)
  letter = 0

  while letter < b.length
    if b[letter] == " "
      print " "
      letter += 1
    elsif b[letter] == "z"
      print "a"
      letter += 1
    else
      index = "abcdefghijklmnopqrstuvwxyz".index(b[letter])
      print "abcdefghijklmnopqrstuvwxyz"[index - 1]
      letter +=1
    end
  end
end

encrypt("abc")
encrypt("zed")
decrypt("bcd")
decrypt("afe")
decrypt(encrypt("swordfish"))