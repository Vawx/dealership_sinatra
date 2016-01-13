class Car
  def initialize(make, model, year, color, miles)
    @make = make
    @model = model
    @year = year
    @color = color
    @miles = miles
  end

  def details
    car_details = Hash.new
    car_details.store("make", @make)
    car_details.store("model", @model)
    car_details.store("year", @year)
    car_details.store("color", @color)
    car_details.store("miles", @miles)
    return car_details
  end
end
