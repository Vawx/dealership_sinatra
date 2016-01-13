class Dealership
  @@dealerships = []

  def initialize(name)
    @name = name
    @id = @@dealerships.length + 1
    @cars = []
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
end
