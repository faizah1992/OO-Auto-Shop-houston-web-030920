class Car

  @@all = []

  attr_reader :make, :model, :classification, :carowner, :mechanic

  def initialize(make, model, classification, carowner,mechanic)
    @make = make
    @model = model
    @classification = classification
    @carowner = carowner
    @mechanic = mechanic
    @@all << self 
  end

  def self.all
    @@all 
  end 

  def self.classifications
    Car.all.map do |c|
      c.classification 
    end
  end 

  def list_of_mechanics
    Mechanic.all.select do |m|
      m.specialty == self.classification
    end
      
  end


  

end
