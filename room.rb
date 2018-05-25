class Room

  attr_reader :number
  attr_accessor :songs, :seats

  def initialize(number)
    @number = number
    @songs = []
    @seats = []
  end

  def song_count
    @songs.count()
  end

  def add_guest_to_room(guest)
    @seats << guest
  end

  def check_guest_out_of_room(guest)
    @seats.delete(guest)
  end

  def guests_count
    @seats.count()
  end


end
