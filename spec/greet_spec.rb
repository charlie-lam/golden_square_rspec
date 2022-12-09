require 'greet'

RSpec.describe "greet method" do
    it "prints out hello plus the name argument" do
        result = greet("Charlie")
        expect(result).to eq "Hello, Charlie!"
    end
end 