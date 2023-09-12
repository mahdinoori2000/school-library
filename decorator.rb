require_relative './name_able'
require_relative './capitalizer'

class Decorator < Nameable
    def initialize(nameCap)
    @nameCap = nameCap
    end

    def correct_name
        @nameCap.correct_name
    end
end
