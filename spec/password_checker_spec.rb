require 'password_checker'

RSpec.describe "Password checker class" do
    it "returns true if the password is valid" do
        my_pass = PasswordChecker.new
        expect(my_pass.check("Password123")).to eq true
    end

    context "Raise an error if the password is too short" do
        it "fails" do
            my_pass = PasswordChecker.new
            expect {my_pass.check("Pass123")}.to raise_error "Invalid password, must be 8+ characters."
        end
    end
end