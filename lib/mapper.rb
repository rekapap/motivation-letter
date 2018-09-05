class Mapper
  def line_dec(ch1, ch2, str)
    line = []
    arr = str.split(//).to_a
    arr[0] == ch1 ? line[0] = 0 : line[0] = 1 # line= [0]
    line[1] = [] # line = [0, []]
    n = 0
    col = ch1
    arr.each do |x|
      if x == col
        n +=1
      else
        line[1].push(n) unless n == 0
        col == ch1 ? col = ch2 : col = ch1
        n = 1
      end
    end
    line[1].push(n) unless n == 0 #last color
    line
  end

  def mapper(str)
    colors = str.split(//).to_a.uniq
    colors.delete("\n")
    if colors.length == 2
      ch1 = colors[0]
      ch2 = colors[1]
    else
      return "Error: not two colors!"
    end
    temp = str.split("\n")
    temp.map{ |l| line_dec(ch1, ch2,l)}
  end

end

if __FILE__ == $PROGRAM_NAME
  # String to map
  str ='▒▒▒         ▒▒▒   ▒▒▒   ▒▒
▒▒▒         ▒▒▒   ▒▒▒   ▒▒
▒▒▒         ▒▒▒   ▒▒▒   ▒▒
▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒   ▒▒▒   ▒▒
▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒   ▒▒▒   ▒▒
▒▒▒         ▒▒▒   ▒▒▒   ▒▒
▒▒▒         ▒▒▒   ▒▒▒
▒▒▒         ▒▒▒   ▒▒▒   ▒▒'

  machine = Mapper.new
  print machine.mapper(str)
end
