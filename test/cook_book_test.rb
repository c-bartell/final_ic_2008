require 'minitest/autorun'
require 'minitest/pride'
require './lib/cookbook'

class CookBookTest < Minitest::Test
  def test_it_exists
    cookbook = CookBook.new

    assert_instance_of CookBook, cookbook
  end
end
