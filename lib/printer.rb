# Printer
class Printer
  
  def lines(ch1, ch2, mp)
    str = ''
    ch1, ch2 = ch2, ch1 if mp[0] == 1
    mp[1].each do |x|
      str << ch1 * x
      ch1, ch2 = ch2, ch1
    end
    str
  end

  def printer(ch1, ch2, pos)
    puts ''
    pos.each do |x|
      puts lines(ch1, ch2, x)
    end
    puts ''
  end

end
