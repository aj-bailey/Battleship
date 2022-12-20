class Cell
  attr_reader :coordinate,
              :ship,
              :fired_upon,
              :render

  def initialize(cell)
    @coordinate = cell
    @ship = nil
    @fired_upon = false
    @render = ' . '
  end

  def empty?
    @ship == nil
  end

  def place_ship(ship)
    @ship = ship
  end

  def fired_upon?
    @fired_upon
  end

  def fire_upon
    @ship.hit if @ship != nil
    @render = " M " if @ship == nil
    @fired_upon = true
  end 

  def render
    @render
  end
end