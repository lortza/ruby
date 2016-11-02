numbers = [1, 2, 3, 4, 5]

#my solution
class Array
  def square
    self.map {|x| x ** 2}
  end

  def cube
    self.map {|x| x ** 3}
  end

  def average
    self.inject {|sum, num| sum += num} / self.length
  end

  def sum
    self.inject {|sum, num| sum += num}
  end

  def even
    self.select {|x| x.even?}
  end

  def odd
    self.select {|x| x.odd?}
  end

end

#other solution
class Array
  def square
    map {|x| x*x}
  end

  def cube
    map {|x| x**3}
  end
  
  def average
    sum / size
  end
  
  def sum
    reduce(:+)
  end
  
  def even
    select(&:even?)
  end
  
  def odd
    select(&:odd?)
  end
end

p numbers.odd
p numbers