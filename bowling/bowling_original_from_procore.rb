
class BowlingGameOriginal
  # Scoring
  # 1 point per pin
  # Spare ( [N, /] ): 10 points + value of next roll
  # Strike ( [X, -] ): 10 points + sum of the values of the next 2 rolls
  attr_accessor :all_frames


  def initialize(*args)
    @all_frames = args
    @current_frame_value = 0
    @frame_type = 'simple'
  end

  def simple_score(frame)
    frame.each do |pins_in_this_roll|
      @current_frame_value += pins_in_this_roll.to_i
    end
  end

  def calculate_spare(frame, i)
    if determine_frame_type(all_frames[i+1], 0) == "strike"
      @current_frame_value += 10
      calculate_strike(frame, i)
    else
      @current_frame_value += 10
      @running_spare_score = all_frames[i+1][0].to_i
      @current_frame_value += @running_spare_score
    end
    @current_frame_value
  end

  def calculate_strike(frame, i)
    if determine_frame_type(all_frames[i+1], 0) == "spare"
      @current_frame_value += 5
      calculate_spare(all_frames[i+1], i+1)
    # elsif determine_frame_type(all_frames[i+1], 0) == "strike"
    #   @current_frame_value += 5
    #   @running_strike_score = 0
    #   @running_strike_score += all_frames[i+1][0].to_i
    #   @running_strike_score += all_frames[i+1][1].to_i
    #   @current_frame_value += @running_strike_score
    else
      @current_frame_value += 10
      @running_strike_score = 0
      @running_strike_score += all_frames[i+1][0].to_i
      @running_strike_score += all_frames[i+1][1].to_i
      @current_frame_value += @running_strike_score
    end
    @current_frame_value
  end

  def this_works(frame, i)
    if i+1 < 10 && frame.include?('/')
      if all_frames[i+1].include?('X')
        @current_frame_value += 20
      else
        calculate_spare(frame, i)
      end#if next is strike
    elsif i+1 < 10 && frame.include?('X')
      if all_frames[i+1].include?('/')
        @current_frame_value += 10 #for the strike
        @current_frame_value += 10 #for the strike's first additional roll, which is a spare
        @current_frame_value += all_frames[i+1][1].to_i #for the spare's next roll
      elsif all_frames[i+1].include?('/')
        @current_frame_value += 10 #for the strike
        @current_frame_value += 10 #for the next roll which is a strike
        @current_frame_value += all_frames[i+2][0].to_i #for the second strike's first additional roll
        @current_frame_value += all_frames[i+2][1].to_i #for the second strike's second additional roll
      else
        calculate_strike(frame, i)
      end#if next is spare
    else
      simple_score(frame)
    end
  end

  def determine_frame_type(frame, i)
    if frame.include?('/')
      @frame_type = 'spare'
    elsif frame.include?('X')
      @frame_type = 'strike'
    else
      @frame_type = 'simple'
    end
    @frame_type
  end

  def last_frame?(frame, i)
    @last_frame = all_frames[i+1] == nil
  end

  def calculate_score
    self.all_frames.each_with_index do |frame, i|
      determine_frame_type(frame, i)
      last_frame?(frame, i)
      if @frame_type == 'spare'
        calculate_spare(frame, i)
      elsif @frame_type == 'strike'
        calculate_strike(frame, i)
      else
        simple_score(frame)
      end
      #this_works(frame, i)

    end#all_frames
    @current_frame_value
  end#calculate_score

end#BowlingGame


game = BowlingGame.new(
  ['4', '3'], ['2', '6'], ['6', '/'], ['X', '-'], ['3', '3'], ['7', '/'], ['2', '1'], ['7', '/'], ['X', '-'], ['3', '2']
  )
puts game.calculate_score
