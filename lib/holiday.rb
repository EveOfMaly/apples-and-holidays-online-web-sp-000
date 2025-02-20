require 'pry'


holiday_hash = 
  {
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
  # return the second element in the 4th of July array
  return holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above 
  # add the second argument, which is a supply, to BOTH the 
  # Christmas AND the New Year's arrays
 
 
  holiday_hash.each do |season_hash, holidays_hash|
    if season_hash == :winter 
      holiday_hash[:winter][:christmas] << supply
      holiday_hash[:winter][:new_years] << supply
    end
  end
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above 
  # add the second argument, which is a supply, to BOTH the 
  # Christmas AND the New Year's arrays
  holiday_hash[:winter].each {|k, v| holiday_hash[:winter][k] << supply }

end

def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
      holiday_hash[:spring][:memorial_day] << supply
end



def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  
    return  holiday_hash[season][holiday_name] = supply_array
end



def all_winter_holiday_supplies(holiday_hash)
  return holiday_hash[:winter].values.flatten
end


#   # iterate through holiday_hash and print items such that your readout resembles:
#   # Winter:
#   #   Christmas: Lights, Wreath
#   #   New Years: Party Hats
#   # Summer:
#   #   Fourth Of July: Fireworks, BBQ
#   # etc.
  
def all_supplies_in_holidays(holiday_hash)
    holiday_hash.each do |season, data|
      puts "#{season.capitalize.to_s}:"
      data.each do |holiday, equipment|
        final_holiday = []
        
        holiday.to_s.split("_").each do |word|
          final_holiday << word.capitalize!
        end
    
        puts "  #{final_holiday.join(" ")}: #{equipment.join(", ")}"
      end
    end
    
end




def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  array = []
  
  holiday_hash.each do |season, data|
    data.each do |holiday, equipment|
      if equipment.include?("BBQ") 
        array << holiday
      end
    end
  end
  return array
end







