require './lib/encrypt'

# Creates the message from ciphered text hash
class MessageMaker
  include Encrypt

  def revelio(secret, rotate)
    header = []
    secret.each do |key, _value|
      header.push(caesar_cip(key,rotate))
    end
    header.zip(secret.values).to_h
  end

  def word_number(hash)
    count = 0
    hash.each{ |_key, value|
      count = value.max if value.max > count
    }
    count
  end

  def newline(word)
    if word[-1] == '.' || word[-1] == '!'
      puts ''
    else
      print ' '
    end
  end

  def wordize(secrets, rotate = -13)
    @@words = revelio(secrets, rotate)
    @@word_number = word_number(@@words)
    for i in 0..@@word_number do
      @@words.each do |key, value|
        value.each do |arr|
          next unless arr == i
          print key
          newline(key)
        end
      end
    end
  end
end

if __FILE__ == $PROGRAM_NAME
  message = MessageMaker.new
  message.wordize(secrets) # add your the shift number here if you changed it in the word_maker.rb
end
