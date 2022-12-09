require 'report_length'

RSpec.describe "report_length" do
    it "returns a sentence with the length of a string" do
        result = report_length("hello there")
        expect(result).to eq "This string was 11 characters long."
    end
end 