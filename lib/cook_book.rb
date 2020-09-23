require './lib/recipe'

class CookBook
  attr_reader :recipes, :date

  def initialize
    @recipes = []
    @date = Date.today.strftime('%m-%d-%Y')
  end

  def add_recipe(recipe)
    @recipes << recipe
  end

  def ingredients
    recipes.flat_map(&:ingredients).uniq.map(&:name)
  end

  def highest_calorie_meal
    recipes.max_by(&:total_calories)
  end
end
