require_relative './decorator'

class CapitalizeDecorator < Decorator
    def correct_name
      name = super
      name.capitalize
    end
  end