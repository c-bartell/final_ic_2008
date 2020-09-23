require 'minitest/autorun'
require 'minitest/pride'
require './lib/pantry'

class PantryTest < Minitest::Test
  def test_it_exists
    pantry = Pantry.new

    assert_instance_of Pantry, pantry
  end

  def test_it_has_attributes
    pantry = Pantry.new

    assert_equal ({}), pantry.stock
  end
end

# pantry = Pantry.new
# ingredient1 = Ingredient.new({name: "Cheese", unit: "oz", calories: 50})
# ingredient2 = Ingredient.new({name: "Macaroni", unit: "oz", calories: 200})
