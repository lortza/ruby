# def row_sum_odd_numbers(n)
#   n ** 3
# end

# # tree_elements = []
# tree_elements = (1..29).select {|e| e.odd?}
# rows = (1..5).to_a

# total = []
# counter = 1
# (1..5).each do
#   counter.times do |x|
#    total << tree_elements.shift
#    total.inject(0) do |sum, number|
#     sum += number
#    end#inject
#    # tree_elements = tree_elements.shift
#   end#times do
#   counter += 1
#    p "tree #{tree_elements}"
#    p "total #{total}"
# end#each do


# # selection = tree_elements.select.with_index do |x, index|
# #   index == 2
# # end
# # p selection

# # p tree_elements.shift.limit(3)

# # 1 through 29
# nested_array = [[1], [3, 5], [7, 9, 11], [13, 15, 17, 19], [21, 23, 25, 27, 29]]
# summing_array = []
# nested_array.each do |array|
#   p "array = #{array}"
#   array.inject do |sum, number|
#     sum += number
#     p sum
#     summing_array << sum
#   end

# end

def row_sum_odd_numbers(n)
  n ** 3
end

p row_sum_odd_numbers(5)
