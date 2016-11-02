# make a string title case excluding minor words

def title_case(title, minor_words = '')
  title.capitalize.split().map do |word|
    if minor_words.downcase.split().include?(word)
      word
    else word.capitalize
    end
  end.join(' ')
end

p title_case('ancient clash of the KINGS', 'a an the of') # should return: 'Ancient Clash of the Kings'