class Mechanic

  @@all =[]

  attr_reader :name, :specialty

def initialize(name, specialty)
  @name = name
  @specialty = specialty
  @@all << self 
end

def self.all
  @@all
end 

def list_of_cars
  Car.all.select do |c|
    c.mechanic == self 
  end 
end

def list_of_car_owners
  cars = Car.all.select do |c|
    c.mechanic == self 
  end 
  cars.map do |c|
    c.carowner
  end 

end 

def carowner_name
  self.list_of_car_owners.map do |l|
    l.name 
  end
end

end
