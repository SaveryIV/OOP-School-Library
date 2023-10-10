require_relative 'decorator'

class TrimmerDecorator < Decorator
    def correct_name
        @names.correct_name.length <= 10 ? @names.correct_name : @names.correct_name[0...10]
    end
end