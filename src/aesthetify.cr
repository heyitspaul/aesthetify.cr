require "./aesthetify/*"

# The basic premise is we shift characters into the Fullwidth and Halfwidth
# Unicode character space using simple arithmetic and a 0x0020 (32) character
# offset since the ASCII characters with fullwidth replacements only begin
# showing up at 0x0021 in Unicode (0x0020 is the space character).
#
# This code was ported from Ruby and is currently missing the bang versions
# because there doesn't exist a `String#replace` method in Crystal yet.
class String

  # Takes a string and mutates it into a fullwidth uppercase version of that
  # string.
  def aesthetify
    output = [] of Char
    chars.each do |letter|
      if (0x0021..0x0060).covers?(letter.ord) || (0x007B..0x007E).covers?(letter.ord)
        output << (letter.ord + 0xFF00 - 32).chr
      elsif (0x0061..0x007A).covers?(letter.ord)
        output << (letter.ord + 0xFF00 - 64).chr
      else
        output << letter
      end
    end
    output.join
  end

  # Takes a string and mutates it into a fullwidth version of that string.
  def fullwidth
    output = [] of Char
    chars.each do |letter|
      if (0x0021..0x007E).covers?(letter.ord)
        output << (letter.ord + 0xFF00 - 32).chr
      else
        output << letter
      end
    end
    output.join
  end
end
