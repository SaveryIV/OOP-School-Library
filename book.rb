class Book
  attr_accessor :title, :author, :rentals

  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end

  def add_rental(date, person)
    rentals = Rental.new(date, self, person)
    @rentals.push(rentals)
    rentals
  end
end
