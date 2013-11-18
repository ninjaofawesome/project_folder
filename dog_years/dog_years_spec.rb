require './dog_years.rbs'

define "age_in_years" do
it "should return an age of 7"
	expect(age).to eq(7)
end

define "age_in_days" do
it "should return the dog's age in days"
	expect(age(7)).to eq (2555)
end

define "age_in_dog_years" do
it "should return the dog's age in years"
	expect(age(7)). to eq(49)
end