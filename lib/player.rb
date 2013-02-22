class Player
  attr_reader :name, :mark
  def initialize(name="Unknown")
    @name = name
  end
  def set_name(name_string) 
    @name = name_string
  end
  def set_mark(mark_string)
    @mark = mark_string
  end
end
