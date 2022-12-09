require 'present'

RSpec.describe "Present class" do

    it "returns contents after wrapping" do 
        present = Present.new
        expect(present.wrap("bike")).to eq "bike"
    end

    it "returns the unwrapped present contents" do 
        present = Present.new
        present.wrap("bike")
        expect(present.unwrap).to eq "bike"
    end

    context "fails if contents have already been wrapped" do
        it "fails" do
            present = Present.new
            present.wrap("bike")
            expect {present.wrap("")}.to raise_error "A contents has already been wrapped."
        end
    end

    context "fails if there are no contents to be unwrapped" do
        it "fails" do
            present = Present.new
            expect {present.unwrap}.to raise_error "No contents have been wrapped."
        end
    end
end