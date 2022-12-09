require 'reminder'

# We use the class name here rather than a string
RSpec.describe Reminder do
  it "reminds the user to do a task" do
    reminder = Reminder.new("Kay")
    reminder.remind_me_to("Walk the cat")
    result = reminder.remind()
    expect(result).to eq "Walk the cat, Kay!"
  end

  # We would typically have a number of these examples.
end