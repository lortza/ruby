# Scoring
# 1 point per pin
# Spare ( [N, /] ): 10 points + value of next roll
# Strike ( [X, -] ): 10 points + sum of the values of the next 2 rolls

class Frame
  attr_reader :sanitized_frame, :bonus_rolls_to_add

  def initialize(frame)
    @sanitized_frame = Array.new(2)
    @bonus_rolls_to_add = 0
    sanitize_frame(frame)
  end

  def sanitize_frame(frame)
    if is_a_spare?(frame)
      @sanitized_frame[0] = frame[0].to_i
      @sanitized_frame[1] = 10 - @sanitized_frame[0]
      @bonus_rolls_to_add = 1
    elsif is_a_strike?(frame)
      @sanitized_frame[0] = 10
      @sanitized_frame[1] = 0
      @bonus_rolls_to_add = 2
    else
      @sanitized_frame[0] = frame[0].to_i
      @sanitized_frame[1] = frame[1].to_i
    end
  end

  def value
    @sanitized_frame.reduce(:+)
  end

  def is_a_spare?(frame)
    frame[1] == '/'
  end

  def is_a_strike?(frame)
    frame[0] == 'X'
  end
end


class BowlingGame
  def initialize(*all_frames)
    @all_frames = all_frames
  end

  def all_frames
    @all_frames
  end

  def valued_frames
    all_frames.map { |frame| Frame.new(frame) }
  end

  def calculate_score
    balance = 0

    held_frames = []
    rolls_to_hold = 0

    valued_frames.each do |frame|
      balance += frame.value

      while rolls_to_hold > 0
        frame.sanitized_frame.each do |roll|
          balance += roll
          rolls_to_hold -= 1
        end
      end
      
      rolls_to_hold += frame.bonus_rolls_to_add if frame.bonus_rolls_to_add > 0
      p"frame: #{frame.value} | frames_holds: #{frame.bonus_rolls_to_add} | balance: #{balance} | holds balance: #{rolls_to_hold}"
    end
    balance
  end

end

# ['4', '3'], 7
# ['9', '/'], 10 + 2
# ['2', '-'], 2
# ['7', '/'], 10 + 0
# ['-', '6'], 6
# ['2', '/'], 10 + 8
# ['8', '-'], 8
# ['6', '-'], 6
# ['-', '-'],
# ['-', '-']

# p [7, 12, 2, 10, 6, 18, 8, 6].reduce(:+)
