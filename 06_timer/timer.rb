class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    if @seconds > 3600
      hours = @seconds / 3600
      minutes = (@seconds - (hours * 3600)) / 60
      seconds = @seconds - ((hours * 3600) + (minutes * 60))
    elsif @seconds > 60
      hours = 0
      minutes = @seconds / 60
      seconds = @seconds % 60
    else
      hours = 0
      minutes = 0
      seconds = @seconds
    end
    sprintf("%02d:%02d:%02d", hours, minutes, seconds)
  end
end
