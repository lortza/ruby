# ROT13 is a code system where the letters are rotated 13 characters:
# A = N, B = O, C = P

#option 1
def rot13(secret_messages)
  alpha = ('a'..'z').to_a.join("")
  alpha += alpha.upcase
  alpha_rot13 = ('n'..'z').to_a.join("") + ('a'..'m').to_a.join("")
  alpha_rot13 += alpha_rot13.upcase
  secret_messages.tr!(alpha,
    alpha_rot13)
end

#option 2
def rot13(secret_messages)
  alpha = ('a'..'z').to_a + ('A'..'Z').to_a
  code_key = {" " => " ", "."=>".", "?"=>"?", "!"=>"!"}

  alpha.each_with_index do |a, i|
    if i.between?(0, 12) || i.between?(27, 38)
      code_key[a] = alpha[i + 13]
    else
      code_key[a] = alpha[i - 13]
    end#if
  end#do

  encoded_message = secret_messages.split("").map do |letter|
    letter = code_key[letter]
  end
  encoded_message.join()
end

# BS NO SPLIT VERSION
def rot13(secret_messages)
  alpha = ('a'..'z').to_a + ('A'..'Z').to_a
  code_key = {" " => " ", "."=>".", "?"=>"?", "!"=>"!"}

  alpha.each_with_index do |a, i|
    if i.between?(0, 12) || i.between?(27, 38)
      code_key[a] = alpha[i + 13]
    else
      code_key[a] = alpha[i - 13]
    end#if
  end#do

  split_message = []
  secret_messages.each_char do |c|
    split_message.push(c)
  end

  encoded_message = split_message.map do |letter|
    letter = code_key[letter]
  end
  encoded_message.join()
end

string = "ab cd x y z"
message = "Why did the chicken cross the road?"
output  = "Jul qvq gur puvpxra pebff gur ebnq?"
p rot13(output)
