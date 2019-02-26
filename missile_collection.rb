class MissileCollection

  attr_reader :missiles

  def initialize
    @missiles = []
  end

  # def add(missile)
  #   missiles << missile
  # end

  def update
    missiles.each(&:move)
  end

  def draw
    missiles.each(&:draw)
  end

  # def add_from(ship_or_alien)
  #   if ship_or_alien.is_a? Ship
  #     missile = Missile.new(ship_or_alien.muzzle_location)
  #     missile.launch(-10)
  #   elsif ship_or_alien.is_a? Alien
  #     missile = Missile.new(Vector.new(ship_or_alien.location.x, ship_or_alien.bottom_edge))
  #     missile.launch(10)
  #   end
  #   add(missile)
  # end

  def add_from(ship_or_alien)
    ship_or_alien.each{|ship_or_alien|
      ship_or_alien.add(missile)}
  end

end
