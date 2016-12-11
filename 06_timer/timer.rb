class Timer
  @seconds
  @minutes
  @hours

  def seconds
    @seconds
  end

  def seconds=(seconds)
    @seconds = seconds
  end

  def minutes=(minutes)
    @minutes = minutes
  end

  def hours=(hours)
    @hours = hours
  end

  def minutes
    @minutes
  end

  def hours
    @hours
  end

  def initialize
    @seconds = 0
    @minutes = 0
    @hours = 0
  end

  def time_string
    if @seconds >= 60
      @minutes = @minutes + @seconds / 60
      @seconds = @seconds % 60
    end

    if @minutes >= 60
      @hours = @hours + @minutes / 60
      @minutes = @minutes % 60
    end

    pad_time(@hours) + ":" + pad_time(@minutes) + ":" + pad_time(@seconds)
  end

  def pad_time(n)
    if n < 10
      "0" + n.to_s
    else
      "" + n.to_s
    end
  end
end
