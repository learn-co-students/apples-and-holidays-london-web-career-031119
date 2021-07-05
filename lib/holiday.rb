holiday_supplies = {
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

def all_supplies(holiday_supplies)
  holiday_supplies.each do |season, data|
    puts "#{season.to_s.capitalize!}:"
    data.each do |holiday, supply|
  
      puts "  #{str_holiday}: #{supply.join(", ")}"
    end
  end 
end 

all_supplies(holiday_supplies)

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  holiday_hash.map do |season, holidays|
    holidays.map do |holiday, supplies|
      holiday if supplies.include?("BBQ")
    end
  end.flatten.compact
end
all_holidays_with_bbq(holiday_supplies)