require("minitest/autorun")
require("minitest/rg")

require_relative("../song")

class SongTest < MiniTest::Test

  def setup
    @song = Song.new("All Along the Watchtower", "Jimi Hendrix")
  end

  def test_song_has_name
    assert_equal("All Along the Watchtower", @song.name())
  end

  def test_song_has_artist
    assert_equal("Jimi Hendrix", @song.artist())
  end


end
