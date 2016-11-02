# The tribonacci sequence is a generalization of the Fibonacci sequence where each term is the sum of the three preceding terms

#Fibonacci sequence, and characterized by the fact that every number in it is the sum of the two preceding ones:[1][2]
# 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144

tri_sig = [1, 1, 1]
max_length = 10

#my solution
def tribonacci(signature,n)
  while signature.length < n
    signature << signature[-3] + signature[-2] + signature[-1]
  end
  signature
end


#other solution
def tribonacci(s, n)
  for i in 3..n
    s[i] = s[i-1] + s[i-2] + s[i-3]
  end
  return s.slice(0, n)
end

p tribonacci(tri_sig, max_length)

