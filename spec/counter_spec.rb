require 'counter'

RSpec.describe "counter class" do

    it "reports no added count" do
        current_counter = Counter.new
        result = current_counter.report
        expect(result).to eq "Counted to 0 so far."
    end

    it "reports the current count" do
        current_counter = Counter.new
        current_counter.add(5)
        result = current_counter.report
        expect(result).to eq "Counted to 5 so far."
    end
end
