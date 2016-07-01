class User
  @@all = []
  attr_accessor :first_name, :last_name, :id, :age

  def initialize(first_name, last_name, age)
    @@all << self
    @first_name = first_name
    @last_name = last_name
    @id = set_id
    @age = age
  end

  def set_id
    $__id ||=0
    $__id += 1
  end

def to_json(json = nil)
  {
    first_name: @first_name,
    last_name: @last_name,
    age: @age
  }.to_json
end
  # def to_s
  #   "#{first_name}, #{last_name}, #{age}"
  # end


  def self.all
    @@all
    # users = [{ first_name: "Ahkeem", last_name: "Lang", id: "1", age: "23"},
    #       {first_name: "Matt", last_name: "Saz", id: "2", age: "22"},
    #       {first_name: "Lexis", last_name: "Corona", id: "3", age: "24"},
    #       {first_name: "Paul", last_name: "Varsco", id: "4", age: "38"},
    #       {first_name: "Melissa", last_name: "Soul", id: "5", age: "55"}]
  end
end

50.times do
  User.new(Faker::Name.first_name, Faker::Name.last_name, Faker::Number.between(1, 10))
end
