class Car
  def initialize(make, model, year, color, miles, id)
    @id = id
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

  def make
    @make
  end

  def model
    @model
  end

  def year
    @year
  end

  def color
    @color
  end

  def miles
    @miles
  end

  def id
    @id
  end

end
