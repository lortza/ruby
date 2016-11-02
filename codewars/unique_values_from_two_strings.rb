# get the unique characters from 2 strings
string1 = "aretheyhere"
string2 = "yestheyarehere"
result = "aehrsty"

#my solution
def longest(a1, a2)
  (a1 + a2).split("").sort.uniq!.join("")
end

#another solution
def longest(a1, a2)
  (a1+a2).chars.uniq.sort.join
end


#output
p longest(string1, string2)
#testing
p longest(string1, string2) == result

