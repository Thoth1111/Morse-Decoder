@alphabets = {
    ".-" => "A",
    "-..." => "B",
    "-.-." => "C",
    "-.." => "D",
    "." => "E",
    "..-." => "F",
    "--." => "G",
    "...." => "H",
    ".." => "I",
    ".---" => "J",
    "-.-" => "K",
    ".-.." => "L",
    "--"  => "M",
    "-." => "N",
    "---" => "O",
    ".--." => "P",
    "--.-" => "Q",
    ".-." => "R",
    "..." => "S",
    "-" => "T",
    "..-" => "U",
    "...-" => "V",
    ".--" => "W",
    "-..-" => "X",
    "-.--" => "Y",
    "--.." => "Z",
};

def decode_char (string)
    @alphabets[string]
  end

def decode_word(string)
    @text = []
    each = string.split(' ')
    each.each do |i|
       @newWord = decode_char(i)
       @text.push(@newWord)
    end
    print "#{@text.join()} "
   end
  