require 'string_builder'

RSpec.describe "string builder class" do

    it "returns the size with no string" do
        new_string = StringBuilder.new
        result = new_string.size
        expect(result).to eq 0
    end

    it "returns empty string" do
        new_string = StringBuilder.new
        result = new_string.output
        expect(result).to eq ""
    end

    it "returns the size of an added string" do
        new_string = StringBuilder.new
        new_string.add("hello")
        result = new_string.size
        expect(result).to eq 5
    end

    it "returns the string thats been added" do
        new_string = StringBuilder.new
        new_string.add("world")
        result = new_string.output
        expect(result).to eq "world"
    end
end