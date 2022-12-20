class Cell
  attr_reader :coordinate,
              :ship,
              :fired_upon,
              :render

  def initialize(cell)
    @coordinate = cell
    @ship = nil
    @fired_upon = false
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
    @fired_upon = true
  end 

  def render(true_value = false)
    if true_value && @ship != nil
      return " S " 
    elsif @ship == nil && fired_upon
      return " M "
    elsif @ship != nil && fired_upon
      return " H "
    else
      return " . "
    end
  end
end