require File.join(File.dirname(__FILE__),'gilded_rose')

describe GildedRose do

  describe "#update_quality" do
    it "does not change the name" do
      items = [Item.new("foo", 0, 0)]
      GildedRose.new(items).update_quality()
      expect(items[0].name).to eq "foo"
    end

    it "updates the quality for regular item" do
      items = [Item.new("Regular Item", 5, 10)]
      GildedRose.new(items).update_quality()
      expect(items[0].quality).to eq 9
    end

    it "updates the quality for aged brie" do
      items = [Item.new("Aged Brie", 5, 10)]
      GildedRose.new(items).update_quality()
      expect(items[0].quality).to eq 11
    end

    it "updates the quality for backstage passes" do
      items = [Item.new("Backstage passes to a TAFKAL80ETC concert", 11, 10)]
      GildedRose.new(items).update_quality()
      expect(items[0].quality).to eq 11
    end

    it "updates the quality for sulfuras" do
      items = [Item.new("Sulfuras, Hand of Ragnaros", 5, 10)]
      GildedRose.new(items).update_quality()
      expect(items[0].quality).to eq 10
    end

    it "updates the quality for conjured item" do
      items = [Item.new("Conjured", 5, 10)]
      GildedRose.new(items).update_quality()
      expect(items[0].quality).to eq 8
    end
  end

end
