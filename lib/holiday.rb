require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
 holiday_hash[:summer][:fourth_of_july][1]

  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |holiday,items_list|
    items_list << supply
  end
  
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays

end


def add_supply_to_memorial_day(holiday_hash, supply)
  
 holiday_hash[:spring][:memorial_day] << supply

  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  
  holiday_hash[season][holiday_name] = supply_array
   holiday_hash   #return the new hash
end

def all_winter_holiday_supplies(holiday_hash)
  all_winter_supplies = []
    holiday_hash[:winter].collect do
    |holiday, supply|
    all_winter_supplies << supply
end
all_winter_supplies.flatten
end

def all_supplies_in_holidays(holiday_hash)
 
 
  holiday_hash.each do |season, holidays|
    puts "#{season.to_s.capitalize}:"
    holidays.each do |holiday, supplies|
       
      # first, manipulate the holiday symbols
      new = holiday.to_s.split("_").collect {|item| item.capitalize}.join(" ")
      #then, manipulate the supply string
      puts "  #{new}: #{supplies.join(", ")}"
      end
    end
end	
     

    #     contacts.each do |person, contact_details_hash|
#   if person == "Freddy Mercury"
#     contact_details_hash.each do |attribute, data|
#       if attribute == :favorite_ice_cream_flavors
#         binding.pry
#       end
#     end
#   end
# end
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.



def all_holidays_with_bbq(holiday_hash)
  bbq_holidays = []
  holiday_hash.each do |seasons, holidays|
    holiday_hash[seasons].each do |holidays, supplies|
     holiday_hash[seasons][holidays].each do |supplies|
        if supplies == "BBQ"
          bbq_holidays << holidays
        end
      end
    end
  end
  bbq_holidays
  
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

end








