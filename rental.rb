class Rental
  attr_accessor :date, :book, :person

  def initialize(date, books, person)
    @date = date
    @person = person
    @book = books
    person.rentals << self
    books.rentals << self
  end
end
