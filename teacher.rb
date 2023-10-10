class Teacher < Person
  def initialize(id, age, specialization, name: 'Unknown', parent_permission: true)
    super(id, name: name, age: age, parent_permission: parent_permission)
    @specialization = specialization
  end

  def can_use_service?
    true
  end
end
