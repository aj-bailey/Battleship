class Cell
  attr_reader :coordinate,
              :ship
              
  def initialize(cell)
    @coordinate = cell
    @ship = nil
  end
end