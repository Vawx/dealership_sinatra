require 'pry'

class Dealership
  @@dealerships = []

  def initialize(name)
    @name = name
    @id = @@dealerships.length + 1
    @cars = []
  end

  def add_car(car)
    @cars << car
  end

  def cars
    return @cars
  end

  def name
    return @name
  end

  define_singleton_method(:add) do |dealership|
    @@dealerships << dealership
  end

  define_singleton_method(:list) do
    return @@dealerships
  end

  define_singleton_method(:clear) do
    @@dealerships = []
  end

  define_singleton_method(:get_dealer_by_name) do |dealer_name|
    @@dealerships.each do |dealer|
      if dealer.name == dealer_name
        return dealer
      end
    end
    return "no dealer found"
  end

end
