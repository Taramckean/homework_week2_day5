require("minitest/autorun")
require("minitest/rg")

require_relative("../room")
require_relative("../guest")
require_relative("../song")

class RoomTest < MiniTest::Test

  def setup
    @room1 = Room.new(1)
    @song1 = Song.new("Hold up", "Beyonce")
    @song2 = Song.new("Hold up", "Beyonce")
    @song3 = Song.new("Hold up", "Beyonce")
    @guest1 = Guest.new("Tara", 25)
    @guest2 = Guest.new("Campbell", 70)
    @guest3 = Guest.new("Gregg", 56)
    @room1.songs.push(@song1, @song2)
  end

  def test_room_has_number
    assert_equal(1, @room1.number())
  end

  def test_room_has_song
  assert_equal(2, @room1.song_count())
  end

  def test_room_has_guests
    @room1.add_guest_to_room(@guest1)
    @room1.add_guest_to_room(@guest2)
    assert_equal(2, @room1.guests_count())
  end

end
