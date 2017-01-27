
def my_attr_reader(instance_variable)
  reader_method_code = <<-EOF
  def #{instance_variable}
    @#{instance_variable} ||= nil
    @#{instance_variable}
  end
  EOF
  eval(reader_method_code)
end

class Person
  my_attr_reader :age
  def initialize(name,age)
    @name = name
    @age = age
  end
  def give_details
    "#{@name} is #{age} years young."
  end
end

mike = Person.new("Mike", 41)
p mike.give_details