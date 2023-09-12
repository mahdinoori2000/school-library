require './name_able'

class Detector < Nameble
    def initialize(name)
    super()
    @name = name
    end

    def correct_name
        @name.correct_name
    end
end

