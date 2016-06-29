class User
  attr_accessor :first_name, :last_name, :id, :age

  def initialize
    @first_name = first_name
    @last_name = last_name
    @id = id
    @age = age
  end
  
  def all
    [{ :first_name => "Ahkeem", :last_name => "Lang", :id => "1", :age => "23"},
        {:first_name => "Matt", :last_name => "Saz", :id => "2", :age => "22"},
        {:first_name => "Lexis", :last_name => "Corona", :id => "3", :age => "24"},
        {:first_name => "Paul", :last_name => "Varsco", :id => "4", :age => "38"},
        {:first_name => "Melissa", :last_name => "Soul", :id => "5", :age => "55"}]
  end
end
