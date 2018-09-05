module Encrypt

  def rotate(rot)
    # a-z, A-Z
    range_d = ('a'..'z').to_a
    range_u = ('A'..'Z').to_a
    
    # a-z, A-Z original
    @@range_o = range_d.clone.push(range_u.clone).flatten!

    # a-z, A-Z rotate
    range_d = range_d.rotate(rot)
    range_u = range_u.rotate(rot)
    range_rot = range_d.push(range_u).flatten!

    # Making the hash
    @@range_o.zip(range_rot).to_h
  end

  def caesar_cip(str, rotate)
    # str.tr('a-z,A-Z', 'n-za-m,N-ZA-M') => Only works for 13 rotated scripts!
    key_hash = rotate(rotate) # hash of the correct shift(like: Z => M)
    str = str.split(//).map{ |ch|
      if @@range_o.include?(ch)
         key_hash[ch]
      else
        ch
      end
    }
    str.join
  end

end
