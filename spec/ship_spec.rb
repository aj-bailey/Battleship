require "./lib/ship"

describe Ship do
  context 'Iteration 1' do
    before(:each) do
      @cruiser = Ship.new("Cruiser", 3)
    end

    it '1. exists' do
      expect(@cruiser).to be_a(Ship)
    end

    it '2. has readable attributes' do
      expect(@cruiser.name).to eq("Cruiser")
      expect(@cruiser.length).to eq(3)
      expect(@cruiser.health).to eq(3)
    end

    it '3. can check if sunk' do
      expect(@cruiser.sunk?).to be(false)
    end
  end
end
