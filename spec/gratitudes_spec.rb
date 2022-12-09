require 'gratitudes'

RSpec.describe "gratitude class" do
    it 'returns an empty gratitude' do
        empty = Gratitudes.new
        expect(empty.format).to eq "Be grateful for: "
    end

    it 'returns a filled gratitude' do
        filled = Gratitudes.new
        filled.add("Makers")
        expect(filled.format).to eq "Be grateful for: Makers"
    end

    it 'returns a multi-filled gratitude' do
        filled = Gratitudes.new
        filled.add("Makers")
        filled.add("Cats")
        filled.add("Pizza")
        expect(filled.format).to eq "Be grateful for: Makers, Cats, Pizza"
    end

end