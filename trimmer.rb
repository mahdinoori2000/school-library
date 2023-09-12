require_relative './decorator'

class TrimmerDecorator < Decorator
  def correct_name
    name = super
    name.length > 10 ? name[0, 10] : name
  end
end
