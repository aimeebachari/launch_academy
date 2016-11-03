class Dog
  attr_reader :name
  def initialize(name)
    @name = name
  end

  def bark
    "Woof!"
  end
end

bronson = Dog.new(bronson)
require 'pry'
binding.pry
