require './encrypt'

# Makes an ciphered text hash from a string.
class WordMaker
  include Encrypt
  def wordmaker(str, rotate = -13)
    str = caesar_cip(str, rotate)
    words = Hash.new { [] }
    i = 0
    str.split(' ').each do |w|
      words[w] = words.key?(w) ? words[w].push(i) : [i]
      i += 1
    end
    words
  end
end

if __FILE__ == $PROGRAM_NAME
  # String to cipher
  str = 'MY dummy Text MY 1!'
  message = WordMaker.new
  # You can also specify the shift for the cipher here: -<your_number> # (minus)
  # If changed the shift here, and you call the wordize method, don't forget to add the parameter to it: wordize(words, <your_number>) #(plus)
  print message.wordmaker(str)
end
