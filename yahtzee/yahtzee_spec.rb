require "./yahtzee"

define "roll_dice" do
it "should give a single number when the dice are rolled."
	expect(roll_dice(1)).to eq(4)
end


define "win?" do
	it "should return a dice roll to be a single number"
	expect(roll.uniq.length).to eq(true)
end