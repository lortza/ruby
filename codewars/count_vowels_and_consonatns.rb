# count vowels and consonants of a given string

input = 'bEl u! Gas'
output = {"vowels"=>3,"consonants"=>4}

#my solution
def get_count(words)
  if words.instance_of?(String)
    vowels = ['a','e','i','o','u']
    output = {"vowels"=> [], "consonants"=> []}

    words.gsub(/\s+/, "").downcase.gsub(/[^0-9a-z ]/i, '').chars.each do |letter|
      vowels.include?(letter) ? output["vowels"].push(letter) : output["consonants"].push(letter)
    end

    output["vowels"] = output["vowels"].size
    output["consonants"] = output["consonants"].size
    output
  else
    output = {"vowels"=> 0, "consonants"=> 0}
  end#if
end


#other solution
def get_count(words=nil)
  if words.class == String
    {"vowels"=>words.downcase.split("").select{ |v| v =~ /[aeiou]/ }.length,
    "consonants"=> words.downcase.split("").select{ |c| c =~ /[bcdfghjklmnpqrstvwxyz]/ }.length}
  else
    {"vowels"=>0,"consonants"=>0}
  end
end

p get_count(input)
p get_count(input) == output ? "PASSES" : "FAILS"
