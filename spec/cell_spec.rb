require './lib/ship'
require './lib/cell'

describe Cell do
  context "Iteration 1" do
    before(:each) do
      @cell = Cell.new("B4")
    end

    it '1. exists' do
      expect(@cell).to be_a(Cell)
    end

    it '2. has readable attributes' do
      expect(@cell.coordinate).to eq("B4")
      expect(@cell.ship).to eq(nil)
    end
  end
end