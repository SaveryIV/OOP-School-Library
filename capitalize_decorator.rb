require_relative 'decorator'

class CapitalizeDecorator < Decorator
    def correct_name
        @names.correct_name.capitalize
    end
end
