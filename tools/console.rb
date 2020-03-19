require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end



co1 = CarOwner.new("Faizah")
co2 = CarOwner.new("Saima")
co3 = CarOwner.new("John")

m1 = Mechanic.new("Tahsin","sedan")
m2 = Mechanic.new("Fahad","suv")
m3 = Mechanic.new("Farshid","suv")


car1 = Car.new("Toyota","Camry","sedan",co1,m1)
car2 = Car.new("Toyota","Corolla","sedan",co2,m3)
car3 = Car.new("Bmw","x7","Suv",co3,m2)
car4 = Car.new("toyota","4runner","Suv",co2,m1)




binding.pry
