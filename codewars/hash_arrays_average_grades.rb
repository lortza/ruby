#return a single average grade across all sections of classes. we're finding a single grade across all students.

class_grades = {
  :section_one => [88, 74, 64],
  :section_two => [99, 100],
  :section_three => [88, 74, 64],
  :section_four => [99, 100]
}

all_classes = class_grades.values.flatten
p all_classes.reduce(:+) / all_classes.length

