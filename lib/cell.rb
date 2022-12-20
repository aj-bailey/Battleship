class Cell
  attr_reader :coordinate,
              :ship

  def initialize(cell)
    @coordinate = cell
    @ship = nil
  end

  def empty?
    @ship == nil
  end

  def place_ship(ship)
    @ship = ship
  end
end