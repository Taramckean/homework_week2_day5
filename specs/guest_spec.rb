require("minitest/autorun")
require("minitest/rg")

require_relative("../guest")
require_relative("../song")

class GuestTest < MiniTest::Test

  def setup
    @guest = Guest.new("Bill", 60, )
  end

  def test_guest_has_name
    assert_equal("Bill", @guest.name())
  end

  def test_guest_has_money
    assert_equal(60, @guest.money())
  end


end
