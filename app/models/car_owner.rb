class CarOwner
  @@all = []
  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self 
  end

  def self.all 
    @@all 
  end 

  def cars 
    Car.all.select do |c|
      c.carowner == self 
    end 
  end

  def cars_count
    self.cars.count
  end

  def mechanics
    cars = Car.all.select do |c|
      c.carowner == self 
    end 
    cars.map do |c|
      c.mechanic
    end
  end

    def self.avg_amount_of_cars
      total = 0 
      CarOwner.all.each do |c|
      total += c.cars_count
      end 

      total / CarOwner.all.count
    end
end
