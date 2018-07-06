# Code Challenge https://www.hackerrank.com/challenges/kangaroo/problem

# You are choreographing a circus show with various animals. For one act, you
# are given two kangaroos on a number line ready to jump in the positive
# direction (i.e, toward positive infinity).
#
# The first kangaroo starts at location x1 and moves at a rate of v1 meters per jump.
# The second kangaroo starts at location x2 and moves at a rate of v2 meters per jump.
# You have to figure out a way to get both kangaroos at the same location as part
# of the show.
#
# Complete the function kangaroo which takes starting location and speed of both
# kangaroos as input, and return 'YES' or 'NO' appropriately. Can you determine if the
# kangaroos will ever land at the same location at the same time? The two kangaroos
# must land at the same location after making the same number of jumps.

# i.e. If the 2 kangaroos can ever meet, return YES, else return NO.

# def kangaroo(x1, v1, x2, v2)
#
# end


#### Refactored Version ####
class Kangaroo
  attr_accessor :position, :jump_length

  def initialize(position, jump_length)
    @position = position
    @jump_length = jump_length
  end

  def has_passed_other?(other_kangaroo)
    is_faster?(other_kangaroo) && is_farther?(other_kangaroo)
  end

  def has_met_other?(other_kangaroo)
    position == other_kangaroo.position
  end

  def jump
    # I'm not sure why the 'self' was required here for the test to pass
    self.position += jump_length
  end

  private

  def is_faster?(other_kangaroo)
    (jump_length > other_kangaroo.jump_length)
  end

  def is_farther?(other_kangaroo)
    (position > other_kangaroo.position)
  end
end


module CompatibilityChecker
  @result = "NO"

  def self.compare_kangaroos(k1, k2)
    until self.done?(k1, k2)
      k1.jump
      k2.jump
    end
    return @result
  end

  def self.done?(k1, k2)
    if k1.has_met_other?(k2)
      @result = "YES"
      true
    elsif k1.has_passed_other?(k2)
      @result = "NO"
      true
    elsif k2.has_passed_other?(k1)
      @result = "NO"
      true
    else
      false
    end
  end
end

# mandatory method for test to run on HackerRank
def kangaroo(x1, v1, x2, v2)
  k1 = Kangaroo.new(x1, v1)
  k2 = Kangaroo.new(x2, v2)

  CompatibilityChecker.compare_kangaroos(k1, k2)
end




#### Original Version ####
@result = "NO"

def kangaroo(x1, v1, x2, v2)
  return "NO" if k1_is_faster_and_closer?(x1, v1, x2, v2)
  return "NO" if k2_is_faster_and_closer?(x1, v1, x2, v2)

  while !done?(x1, v1, x2, v2)
    x1 += v1
    x2 += v2
  end
  return @result
end

def done?(x1, v1, x2, v2)
  if x1 == x2
    @result = "YES"
    true
  elsif k1_is_faster_and_closer?(x1, v1, x2, v2)
    true
  elsif k2_is_faster_and_closer?(x1, v1, x2, v2)
    true
  else
    false
  end
end


def k1_is_faster_and_closer?(x1, v1, x2, v2)
  (v1 > v2) && (x1 > x2)
end

def k2_is_faster_and_closer?(x1, v1, x2, v2)
  (v2 > v1) && (x2 > x1)
end
