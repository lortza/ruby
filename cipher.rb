
# class Cipher

#   def processor(message, offset, adjusted_index_proc)
#     output = []
#     message.chars.each do |letter|
#       new_index = adjusted_index_proc.call(letter)
#       output << ALPHABET[new_index]
#     end
#     output.join()
#   end

#   def encode(message, offset)
#     proc = Proc.new { |letter| ALPHABET.index(letter) + offset }
#     processor(message, offset, proc)
#   end

#   def decode(message, offset)
#     proc = Proc.new { |letter| ALPHABET.index(letter) - offset }
#     processor(message, offset, proc)
#   end


# end


class Cipher

  ALPHABET = ('a'..'z').to_a

  def encode_alphabet(offset)
    letters_offset = ALPHABET[0..(offset + 1)]
    ALPHABET[offset..-1] + letters_offset
  end

  def encode(message, offset)
    encoded_alphabet = encode_alphabet(offset)

    message.chars.map do |letter|
      # find the index of the letter in the alphabet and
      # return the letter at the same index location
      # of the encoded alphabet
      encoded_alphabet[ALPHABET.index(letter)]
    end.join()
  end

  def decode(message, offset)
    encoded_alphabet = encode_alphabet(offset)
    message.chars.map do |letter|
      # find the index of the letter in the encoded alphabet and
      # return the letter at the same index location
      # of the regular alphabet
      ALPHABET[encoded_alphabet.index(letter)]
    end.join()
  end

end
cipher = Cipher.new
p cipher.encode('abc', 3)
# p cipher.encode('ilikekitties', 3)
#> lolnhnlwwlhv
p cipher.decode('def', 3)
p cipher.decode('lolnhnlwwlhv', 3)
