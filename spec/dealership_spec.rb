require 'rspec'
require 'dealership'
require 'car'

describe(Dealership) do
  before() do
    Dealership.clear
  end

  describe('#add') do
    it('adds a dealership to the list') do
      test_dealer = Dealership.new("John's")
      expect(Dealership.add(test_dealer)).to(eq([test_dealer]))
    end
  end

  describe('#list') do
    it('lists all of the dealerships') do
      test_dealer1 = Dealership.new("John's")
      test_dealer2 = Dealership.new("Bill's")
      Dealership.add(test_dealer1)
      Dealership.add(test_dealer2)
      expect(Dealership.list()).to(eq([test_dealer1,test_dealer2]))
    end
  end

  describe('#cars') do
    it('list all cars of a given dealership') do
      test_dealer = Dealership.new("John's")
      Dealership.add(test_dealer)
      test_car = Car.new("Ferrari", "f430", "2016", "red", "10")
      test_dealer.add_car(test_car)
      expect(test_dealer.cars).to(eq([test_car]))
    end
  end
end
