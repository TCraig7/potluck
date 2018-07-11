require 'minitest/autorun'
require 'minitest/pride'
require './lib/dish'
require './lib/potluck'

class PotluckTest < Minitest::Test

  def test_it_exists
    potluck = Potluck.new("7-13-18")

    assert_instance_of Potluck, potluck
  end

  def test_it_has_attributes
    potluck = Potluck.new("7-13-18")

    assert_equal "7-13-18", potluck.date
    assert_equal ([]), potluck.dishes
  end

  def test_it_can_add_dishes
    potluck = Potluck.new("7-13-18")
    couscous_salad = Dish.new("Couscous Salad", :appetizer)
    cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)

    assert_equal [couscous_salad], potluck.add_dish(couscous_salad)
    assert_equal [couscous_salad, cocktail_meatballs], potluck.add_dish(cocktail_meatballs)
    assert_equal [couscous_salad, cocktail_meatballs], potluck.dishes
    assert_equal 2, potluck.dishes.length
  end

  def test_it_can_pull_a_category
    potluck = Potluck.new("7-13-18")
    couscous_salad = Dish.new("Couscous Salad", :appetizer)
    summer_pizza = Dish.new("Summer Pizza", :appetizer)
    roast_pork = Dish.new("Roast Pork", :entre)
    cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
    candy_salad = Dish.new("Candy Salad", :dessert)



  end

end