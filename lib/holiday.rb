require 'pry'
holiday_h = {
  :winter => {
    :christmas => ["Lights", "Wreath"],
    :new_years => ["Party Hats"]
  },
  :summer => {
    :fourth_of_july => ["Fireworks", "BBQ"]
  },
  :fall => {
    :thanksgiving => ["Turkey"]
  },
  :spring => {
    :memorial_day => ["BBQ"]
  }
}
def second_supply_for_fourth_of_july(holiday_hash)
  holiday_supplies[:summer][:fourth_of_july][1]
end
# holiday_hash is identical to the one above
# add the second argument, which is a supply, to BOTH the
# Christmas AND the New Year's arrays
def add_supply_to_winter_holidays(holiday_hash,supply)
  holiday_hash[:winter][:christmas]<<supply
  holiday_hash[:winter][:new_years]<<supply
holiday_hash
end
add_supply_to_winter_holidays(holiday_h,"fer")


def add_supply_to_memorial_day(holiday_hash,supply)
  holiday_hash[:spring].each do
    |attribute,value|
    value.push(supply)
  end
  end
  add_supply_to_memorial_day(holiday_h,"fer")
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array

def add_new_holiday_with_supplies(holiday_hash,season,holiday_name,supply_array)
  # code here
  # remember to return the updated hash
  new_season_and_supply = {holiday_name=>supply_array}
 holiday_hash[season] = holiday_hash[season].merge(new_season_and_supply)
 holiday_hash
end


def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
val =holiday_hash[:winter].map do
  |attribute,val|
  val
  end
  val.flatten
end
all_winter_holiday_supplies(holiday_h)

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
holiday_hash.each do
  |seasons,holiday|  #our keys are winter , summer , fall, spring and values are key-value pairs Christmas:[lights] , etc
  puts "#{seasons.capitalize}:"
  holiday.each do
    |keys,values|
=begin This was my intial way of doing things:
    str_ = keys.to_s # converted the key into to a string, so i could use string methods on it.
    str = str_.sub("_"," ") #replaced the underscore that came from the symbols with periods
  however the challenge was to convert the first letter in each word to capital letter
    finished_string = str.split(" ").map { |word| word.capitalize}.join(" ")  > I wanted to use titleize method but it wasnt working . So used map .
puts "#{finished_string}: #{values.join(", ")}"  > This would have been the answer too. values was an array so i joied the array into string
=end
puts "  #{keys.to_s.split('_').map(&:capitalize).join(" ")}: #{values.join(", ")}" #> New and improved method with a cheeky shorthand in map . all in one line.
end
end
end
all_supplies_in_holidays(holiday_h)




def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
    # include the string "BBQ"
#might be more simple
 array = holiday_hash.map { |season,holiday| #winter is our key and holiday is a key-value pair
   holiday.collect {|attribute,value|  #key-value pair . key is our symbol and value is our value , return only the key parameter gives us all of them we want
     #if for the symbols we want e.g :fourth_of_july & :memorial_day
     if attribute== :fourth_of_july||attribute==:memorial_day #this code returns [nil,nil,fourth_of_july,nil,:memorial_day
       attribute
       end
     }
   }.flatten.delete_if { |e| e==nil }
array
#complete_array = array.flatten.delete_if { |e| e==nil }   #[[nil, nil], [:fourth_of_july], [nil], [:memorial_day]] so we flatten it and delete any nil values
=begin 1st attempt
  holiday.each do
    |keys,value|
  keys.to_s.split(" ").map { |chr| chr  } #> result: got: {:fall=>{:thanksgiving=>["Turkey"]}, :spring=>{:memorial_day=>["BBQ"]}, :summer=>{:fourth_of_july=>["Fireworks", "BBQ"]
  end
=end
end

all_holidays_with_bbq(holiday_h)
binding.pry













x =2
