refactoring.rb


# EXAMPLE 1 refactoring this if and unless statement
games = ["Super Mario Bros.", "Contra", "Metroid", "Mega Man 2"]

if !games.empty?
  puts "Games in your vast collection: #{games.count}"
end

# refactored - better
unless games.empty?
  puts "Games in your vast collection: #{games.count}"
end

# refactored -- best
puts "Games in your vast collection: #{games.count}" unless games


# EXAMPLE 2
# make this if statement less clunky

search = "Super Mario Bros."
games = ["Super Mario Bros.", "Contra", "Metroid", "Mega Man 2"]
matched_games = games.grep(Regexp.new(search))

if matched_games.length > 0
  if matched_games.include?(search)
    puts "Game #{search} found."
  end
end

# refactored:
if games.include? search
  puts "Game #{search} found."
end


# EXAMPLE 3
#from 
search = "" unless search

#to
search = search || ""


