require './magiceightball_pooja.rb'

define "shake"
	it "should return a random answer"
	expect (shake[4]).to eq("You may rely on it")
end
end

### On magic_8_ball was not sure what to test for, but noted that from trying it out "yes or no" in the first put statement would have been helpful.  :)