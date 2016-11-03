class Car
  attr_reader :vin, :price, :make, :model, :year, :trim
  def initialize(vin, price, make, model, year, trim)
    @vin, @price, @make, @model, @year, @trim = vin, price, make, model, year, trim
  end

  def self.count_all_cars
    67
  end

  def self.service_prices(make)
    if make == "Toyota"
      "Oil change is $10, and tires are $40 each"
    else
      "No other makes are respected here."
    end
  end

  def self.create_most_common_car(vin)
    Car.new(vin, "$100", "TOyota", "Camry", "2102", "LE")
  end

  def wash
    "Car wash logged in the system."
  end

  def test_drive(driver_name)
    "#{driver_name} has driven the car," +
      " and this has been logged in the system"
  end
end
require 'pry'
binding.pry
