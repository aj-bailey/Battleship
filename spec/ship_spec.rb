require "./lib/ship"

describe Ship do
  context 'Iteration 1' do
    before(:each) do
      @cruiser = Ship.new("Cruiser", 3)
    end

    it '1. exists' do
      expect(@cruiser).to be_a(Ship)
    end
  end
end
