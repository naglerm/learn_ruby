
require 'simon_says'

class Book
  def title=(s)
    @title = s
  end

  def title
    titleize(@title)
  end
end
