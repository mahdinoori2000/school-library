require_relative 'name_able'
require_relative 'capitalizer'

class Decorator < Nameable
  def initialize(name_cap)
    super()
    @name_cap = name_cap
  end

  def correct_name
    @name_cap.correct_name
  end
end
