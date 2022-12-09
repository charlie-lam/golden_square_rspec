require 'check_codeword'

RSpec.describe "check_codeword method" do
    it "Checks if the word horse entered matches the codeword" do
        result = check_codeword("horse")
        expect(result).to eq  "Correct! Come in."
    end

    it "'Checks if a word with h and e entered returns close" do
        result = check_codeword("house")
        expect(result).to eq "Close, but nope."
    end

    it "Checks if the argument is wrong entirely" do
        result = check_codeword("Yellow")
        expect(result).to eq "WRONG!"
    end
end