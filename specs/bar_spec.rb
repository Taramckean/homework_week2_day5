require("minitest/autorun")
require("minitest/rg")

require_relative("../room")
require_relative("../guest")
require_relative("../song")
require_relative("../bar")

class BarTest < MiniTest::Test

  def setup
    @kareoke_bar = Bar.new(100)
    @room1 = Room.new(1)
    @room2 = Room.new(2)
    @room3 = Room.new(3)
    @song1 = Song.new("Hold up", "Beyonce")
    @song1 = Song.new("Voodoo Child", "Jimi Hendrix")
    @guest1 = Guest.new("Tara", 5)
    @guest2 = Guest.new("Campbell", 70)
    @guest3 = Guest.new("Gregg", 56)
    @kareoke_bar.rooms.push(@room1, @room2, @room3)
  end

  def test_bar_has_entry_fee
    assert_equal(10,@kareoke_bar.entry_fee())
  end

  def test_bar_has_till_money
    assert_equal(100,@kareoke_bar.till())
  end

  def test_bar_has_rooms
    assert_equal(3, @kareoke_bar.rooms.count())
  end

  def test_check_bar_can_checked_guest_into_room
    @room1.add_guest_to_room(@guest2)
    @room1.add_guest_to_room(@guest3)
    assert_equal(2,@room1.guests_count())
  end

  def test_check_bar_can_check_guests_out
    @room1.add_guest_to_room(@guest2)
    @room1.add_guest_to_room(@guest3)
    @room1.check_guest_out_of_room(@guest2)
    assert_equal(1, @room1.guests_count())
  end


  def test_check_guest_into_room__has_enough_money
    @kareoke_bar.check_guest_into_room(@guest2, @room1)
    assert_equal(60, @guest2.money())
    assert_equal(110, @kareoke_bar.till())
    assert_equal(1, @room1.guests_count)
  end

  def test_check_guest_into_room__doesnt_have_enough_money
    @kareoke_bar.check_guest_into_room(@guest1, @room1)
    assert_equal(5, @guest1.money())
    assert_equal(100, @kareoke_bar.till())
    assert_equal(0, @room1.guests_count)
  end

end
