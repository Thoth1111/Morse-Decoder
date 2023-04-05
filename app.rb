# frozen_string_literal: true

@alphabets = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z'
}

def decode_char(string)
  @alphabets[string]
end

def decode_word(string)
  @text = []
  each = string.split(' ')
  each.each do |i|
    @new_word = decode_char(i)
    @text.push(@new_word)
  end
  print "#{@text.join} "
end

def decode(string)
  @split = string.split('   ')
  @split.each do |each|
    decode_word(each)
  end
end
decode('      .-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
