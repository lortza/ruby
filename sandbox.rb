# def thing1
#   @article = false
#   @review = 'nil'

#   if @article
#     # restrict to pages that include that subject
#     puts 'hay article'
#   else
#     if @review == 'review'
#       @pages = [1]
#       @count = @pages.count
#     elsif @review == 'transcription'
#       @pages = [1,1]
#       @count = @pages.count
#     elsif @review == 'index'
#       @pages = [1,1,1]
#       @count = @pages.count
#     else
#       @pages = [1,1,1,1]
#       @count = @pages.count
#     end
#   end

# end

def thing2
  @article = false
  @review = 'moo'

  if @article
    # restrict to pages that include that subject
    puts 'hay article'
  else
    case @review
    when 'review' then @pages = [1]
    when 'transcription' then @pages = [1,1]
    when 'index' then @pages = [1,1,1]
    else @pages = [1,1,1,1]
    end
    @count = @pages.count
  end

end

# p thing1
p thing2
