require './lib/ship'
require './lib/cell'

describe Cell do
  context "Iteration 1" do
    before(:each) do
      @cell = Cell.new("B4")
      @cruiser = Ship.new("Cruiser", 3)

      @cell_2 = Cell.new("C3")
    end

    it '1. exists' do
      expect(@cell).to be_a(Cell)
    end

    it '2. has readable attributes' do
      expect(@cell.coordinate).to eq("B4")
      expect(@cell.ship).to eq(nil)
    end

    it '3. can check if empty' do
      expect(@cell.empty?).to eq(true)

      @cell.place_ship(@cruiser)
      expect(@cell.empty?).to eq(false)
    end
    
    it '4. can place ship' do
      @cell.place_ship(@cruiser)

      expect(@cell.ship).to be(@cruiser)
    end

    it '5. can check if fired upon' do
      @cell.place_ship(@cruiser) 
      expect(@cell.fired_upon?).to eq(false)

      @cell.fire_upon

      expect(@cell.fired_upon?).to eq(true)
    end
    
    it '6. can render the cell status' do
      expect(@cell.render).to eq(' . ')

      @cell.fire_upon

      expect(@cell.render).to eq(" M ")
    end

    it '7. can render the cell status with an optional ship argument' do
      @cell_2.place_ship(@cruiser)
      expect(@cell_2.render(true)).to eq(" S ")
    end
  end
end