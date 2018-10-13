# Reversing the word 'Zebra'
# https://simpleprogrammer.com/solving-problems-breaking-it-down/
# Also see evernote https://www.evernote.com/shard/s266/nl/2147483647/da426354-e169-4d94-a4da-4b11599ece3c/

# Approach 1:
# Using Ruby's .reverse
def ruby_reverser(orig_word)
  orig_word.reverse # => 'arbeZ'
end
# p ruby_reverser('Zebra')


# Approach 2:
# Destructively removing the last letter and appending it to a new word
def string_chopper(orig_word)
  new_word = ''

  while orig_word.length > 0
    new_word += orig_word[-1]
    orig_word.chop!
  end
  new_word
end
# p string_chopper('Zebra')


# Approach 3:
# Use a counter to iterate the index and move letters to a new string
def string_indexer(orig_word)
  new_word = ''
  i = orig_word.length - 1
  while i > -1
    new_word += orig_word[i]
    i -= 1
  end
  new_word
end
p string_indexer('Zebra')


# Approach 4:
# Prepend each letter to a new string
def prepender(orig_word)
  new_word = ''
  orig_word.chars.each do |char|
    new_word.prepend(char)
  end
  new_word
end
# p prepender('Zebra')
