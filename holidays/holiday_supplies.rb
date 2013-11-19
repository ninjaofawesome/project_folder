# Holiday Suppliers

You have a bunch of decorations for various holidays organized by season.

```ruby
holiday_supplies = {
  :winter => {
    :christmas => ["Lights", "Wreath"],
    :new_years => ["Party Hats"]
  },
  :summer => {
    :forth_of_july => ["Fireworks", "BBQ"]
  },
  :fall => {
    :thanksgiving => ["Turkey"]
  },
  :spring => {
    :memorial_day => ["BBQ"]
  }
}
```
## Questions

1. How would you access the second supply for the forth_of_july?
ex: `holiday_supplies[:spring][:memorial_day][0]`
Answer: access_supplies= {}
          holiday_supplies.each do |key, value|
              value.each_pair do |holiday, thing_you_do|
                    puts thing_you_do[1]
              end
          end
        end

OR: holiday_supplies[:summer][:forth_of_july][1]


2. Add a supply to a Winter holiday.

holiday_supplies[:winter][:christmas] << "cookies"

3. Add a supply to memorial day.
holiday_supplies[:spring][:memorial_day] << "beach chair"

4. Add a new holiday to any season with supplies.
holiday_supplies[:spring][:easter] << "PEEEPS.... nom nom nom"

5. Write a method to collect all Winter supplies from all the winter holidays.
ex: `winter_suppliers(holiday_supplies) #=> ["Lights", "Wreath", etc]`

holiday_supplies[:winter][:christmas][:new_years]

6. Write a loop to list out all the supplies you have for each holiday and the season.

holiday_supplies.each do |key, value|
  puts key + ":"
    value.each do |holiday, thing|
      puts holiday + ":" + " " + thing
    end
  end
end

Output:
```
Winter:
  Christmas: Lights and Wreath
  New Years: Party Hats
```

7. Write a method to collect all holidays with BBQ.

`holidays_with_bbqs(holiday_supplies) #=> [:fourth_of_july, :memorial_day]`
