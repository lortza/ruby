# create an array where the values are the min and the max values of the input

listy1 = [1,4,3,2,5]
output1 = [1,5]
listy2 = [3,5,1,8,9]
output2 = [1,9]

#my solution
def min_max(lst)
  new_list = []
  new_list << lst.min
  new_list << lst.max
  new_list
end

#other solution
def min_max(lst)
  return [lst.min, lst.max]
end

p min_max(listy2)