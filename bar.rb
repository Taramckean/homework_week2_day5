class Bar

  attr_reader :till, :entry_fee
  attr_accessor :rooms

  def initialize(till)
    @entry_fee = 10
    @till = till
    @rooms = []
  end

  def check_guest_into_room(guest, room)
    if guest.money >= 10
      if room.guests_count < 10
        guest.money -= @entry_fee
        @till += @entry_fee
        room.add_guest_to_room(guest)
      end
    end
  end




end
