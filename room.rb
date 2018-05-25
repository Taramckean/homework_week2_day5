class Room

  attr_reader :number, :song

  def initialize(number, song)
    @number = number
    @song = song
    @seats = []
  end

end
