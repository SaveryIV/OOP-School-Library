class Person
    def initialize(id, name: "Unknown", age:, parent_permission: true)
        @id = id
        @name = name
        @age = age
        @parent_permission = parent_permission
    end
  
    attr_reader :id
    attr_accessor :name, :age
  
    def can_use_services?
        of_age? || @parent_permission
    end

    private
    
    def of_age?
        @age >= 18
    end
end
  
person1 = Person.new(1,name: "Marcus",age: 18)
  
puts person1.name
puts person1.age
puts person1.can_use_services?