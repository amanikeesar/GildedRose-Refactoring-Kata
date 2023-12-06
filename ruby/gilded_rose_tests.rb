require File.join(File.dirname(__FILE__), 'gilded_rose')
require 'test/unit'

class TestUntitled < Test::Unit::TestCase

  def test_foo
    items = [Item.new("foo", 0, 0)]
    GildedRose.new(items).update_quality()
    assert_equal items[0].name, "foo"
  end

  def test_conjured_item_quality_degradation
    items = [Item.new("Conjured", 5, 10)]
    GildedRose.new(items).update_quality()
    assert_equal items[0].quality, 8
  end

  def test_conjured_item_quality_zero_when_low_quality
    items = [Item.new("Conjured", 5, 1)]
    GildedRose.new(items).update_quality()
    assert_equal items[0].quality, 0
  end
end