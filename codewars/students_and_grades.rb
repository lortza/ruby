# various ways to calculate grades and averages with hashes and arrays
students = {
  :section_one => ['john', 'jeff', 'jill'],
  :section_two => ['jean', 'john'],
  :section_three => ['john', 'jeff', 'jessica'],
  :section_four => ['jacqueline', 'john']
}

# count all students named john
johns = students.values.flatten.select {|name| name == 'john'}
p johns.count

# count all students whose name start with j
j_names = students.values.flatten.select {|name| name[0..1] == 'je'}
p j_names.count



students_and_grades = {
  :section_one => [{name: 'john', grade: 88}, {name: 'jeff', grade: 74}, {name: 'jill', grade: 64}],
  :section_two => [{name: 'jean', grade: 99}, {name: 'john', grade: 100}],
  :section_three => [{name: 'john', grade: 88}, {name: 'jeff', grade: 74}, {name: 'jessica', grade: 64}],
  :section_four => [{name: 'jackie', grade: 99}, {name: 'john', grade: 100}]
}

# get all student names from section 1
students_and_grades[:section_one]
names = students_and_grades[:section_one].map {|student| student[:name]}
# p names

#get all student names from all sections
all_names = students_and_grades.values.flatten.map {|student| student[:name]}
# p all_names

# create an array of all students who don't have a unique name
all_names = students_and_grades.values.flatten.map {|student| student[:name]}
unique_names = []
common_names = []
all_names.each do |name|
  all_names.count(name) == 1 ? unique_names << name : common_names << name
  common_names.uniq!
end
# p "unique: #{unique_names.join(', ')}"
# p "common: #{common_names.join(', ')}"


#print out the number of students who have each common name
common_names.each do |name|
  p "#{name}: #{all_names.count(name)}"
end

# create an array of hashes with the keys :name & :count and the appropriate values
# ex: common_name_counts = [{:name=>"john", :count=>4}, {:name=>"jeff", :count=>2}]
common_name_counts = []
common_names.each do |name|
  common_name_counts << {name: name, count: all_names.count(name)}
end
p common_name_counts


# find the average grade for each student with a common name
students_and_grades2 = students_and_grades.values.flatten

common_names.each do |name|
  student_grades = []
  students_and_grades2.each do |student|
    student_grades << student[:grade] if student[:name] == name
  end#studnets_and_grades2
  average = student_grades.reduce(:+) / student_grades.length
  p "#{name}: #{average}"
end#common_names



#find each student's average grade for the year
students_test_grades = {
  :quarter_one =>   [{name: 'al', grade: 88},   {name: 'becky', grade: 74},   {name: 'chuck', grade: 64}],
  :quarter_two =>   [{name: 'al', grade: 95},   {name: 'becky', grade: 85},   {name: 'chuck', grade: 74}],
  :quarter_three => [{name: 'al', grade: 100},  {name: 'becky', grade: 95},   {name: 'chuck', grade: 84}],
  :quarter_four =>  [{name: 'al', grade: 97},   {name: 'becky', grade: 100},  {name: 'chuck', grade: 72}]
}

student_names = students_test_grades.values.flatten.map do |test_grade|
  test_grade[:name]
end.uniq!

honors_students = []
grades = []

student_names.each do |name|
  student_grades = []
  students_test_grades.values.flatten.each do |test_grade|
    grades << test_grade[:grade]
    student_grades << test_grade[:grade] if test_grade[:name] == name
  end
  student_avg = student_grades.inject(:+) / student_grades.length
  # if a student's grades are above average for the year, put them in the honor's student's array
  overall_avg = grades.inject(:+) / grades.length
  honors_students << name if student_avg >= overall_avg
  p "#{name}: #{student_avg}"
end
p "honors: #{honors_students.join(", ")}"



