class Ingredient
  attr_reader :quantity, :unit, :name
  def initialize(quantity, unit, name)
    @quantity = quantity
    @unit = unit
    @name = name
  end

  def summary
    "#{@quantity} #{@unit} #{@name}"
  end

  # def to_s
  #   "#{@quantity} #{@unit} #{@name}"
  # end
end
require 'pry'
binding.pry

brussel_sprouts = Ingredient.new(47.0, 'lb(s)', 'Brussel Sprouts')

puts brussel_sprouts.summary

ingredients = [
  Ingredient.new(1.5, "lb(s)", "Brussels sprouts"),
  Ingredient.new(3.0, "tbspn(s)", "Good olive oil"),
  Ingredient.new(0.75, "tspn(s)", "Kosher salt"),
  Ingredient.new(0.5, "tspn(s)", "Freshly ground black pepper")
]

instructions = [
  "Preheat oven to 400 degrees F.",
  "Cut off the brown ends of the Brussels sprouts.",
  "Pull off any yellow outer leaves.",
  "Mix them in a bowl with the olive oil, salt and pepper.",
  "Pour them on a sheet pan and roast for 35 to 40 minutes.",
  "They should be until crisp on the outside and tender on the inside.",
  "Shake the pan from time to time to brown the sprouts evenly.",
  "Sprinkle with more kosher salt ( I like these salty like French fries).",
  "Serve and enjoy!"]

class Recipe
  attr_reader :name, :instructions

  def initialize(name, ingredients, instructions)
    @name = name
    @ingredients = ingredients
    @instructions = instructions
  end

  def summary
    recipe_summary = "Name: #{name}\n\n"
    recipe_summary += "Ingredients\n"
    @ingredients.each do |ingredient|
      recipe_summary += "-#{ingredient.summary}\n"
    end
    recipe_summary +="Instructions\n"
    @instructions.each_with_index do |instruction, index|
      recipe_summary += "#{index + 1}. #{instruction}\n"
    end
    recipe_summary
  end
end

roasted_brussel_sprouts = Recipe.new('Roasted Brussel Sprouts', ingredients,
  instructions)

puts roasted_brussel_sprouts.summary
