require_relative 'nameable'
require_relative 'capitalize_decorator'
require_relative 'trimmer_decorator'

class Person < Nameable
  def initialize(age, name = 'Unknown', parent_permission: true)
    super()
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
  end

  attr_reader :id
  attr_accessor :name, :age, :rentals

  def add_rental(date, book)
    rental = Rental.new(date, self, book)
    @rentals.push(rentals)
    rentals
  end

  def can_use_services?
    of_age? || @parent_permission
  end

  def correct_name
    @name
  end

  private

  def of_age?
    @age >= 18
  end
end

Person.new(18, 'Marcus')

# puts person1.name
# puts person1.age
# puts person1.can_use_services?

person = Person.new(22, 'maximilianus')
# person.correct_name
capitalized_person = CapitalizeDecorator.new(person)
puts capitalized_person.correct_name
capitalized_trimmed_person = TrimmerDecorator.new(capitalized_person)
puts capitalized_trimmed_person.correct_name
