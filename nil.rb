# this program will let a user enter a bunch of values, push them into an array and then stop when the user hits enter an exta time

puts "enter some words"
entry = gets.chomp
entries = []

while entry != nil.to_s
  entries.push(entry)
  entry = gets.chomp
end

until entry == nil.to_s
  end

if entry == nil.to_s
  entries.each do |x|
    puts "entry = #{x}"
  end#each
  puts "there were #{entries.length} entries."
  puts entries.join(", ")
end#if
