# create a multiplication table grid:
# 1  2  3  4
# 2  4  6  8
# 3  6  9 12
# 4  8 12 16

input = 3,3
output = [[1,2,3],[2,4,6],[3,6,9]]

#my solution
def multiplication_table(row, col)
  grid_row = (1..row).to_a
  grid_col = (1..col).to_a
  grid = []
  grid_row.each do |r|
    grid_col.each do |c|
      grid << r*c
    end#col
  end#row
  grid.each_slice(row).to_a
end #multiplication_table


#other solution
def multiplication_table(row, col)
  (1..row).map { |r|
    (1..col).map { |c| r * c }
  }
end

p multiplication_table(4,3)
