#format all names from a hash into a string

all_people = ([ {name: 'Bart'}, {name: 'Lisa'}, {name: 'Maggie'}, {name: 'Homer'}, {name: 'Marge'} ])
two_people = ([ {name: 'Bart'}, {name: 'Lisa'} ])
one_person = ([ {name: 'Bart'} ])

#option 1
def list names
  new_list = []
  names.each do |n|
    n.each do |k, v|
      new_list << v
    end
  end
  p new_list
  if new_list.length > 1
    new_list.insert(-2, "&")
    new_list = new_list.join(", ")
    new_list.gsub(', &,', ' &')
  else
    new_list.join("")
  end
end

#option 2
def list names
  names = names.map { |name| name[:name] }
  last_name = names.pop
  return last_name.to_s if names.empty?
  "#{names.join(', ')} & #{last_name}"
end

#option 3
def list names
  names.map(&:values).join(', ').gsub(/, (\w+)$/, " & \\1")
end

p list people