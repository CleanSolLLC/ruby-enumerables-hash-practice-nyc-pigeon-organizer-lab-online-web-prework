require "byebug"

pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

def nyc_pigeon_organizer(data)
  pigeon = {}
  data.each do |attribute, description|
  	description.each do |attribute_name, value|
  		value.each do |pigeon_name|
  			pigeon[pigeon_name] = {} if !pigeon[pigeon_name]

  			if pigeon[pigeon_name][attribute]
  				pigeon[pigeon_name][attribute] << attribute_name.to_s if pigeon[pigeon_name][attribute] && data[attribute][attribute_name].include?(pigeon_name) 

  			else
  				pigeon[pigeon_name][attribute] = []
  				pigeon[pigeon_name][attribute] << attribute_name.to_s if data[attribute][attribute_name].include?(pigeon_name)
  			end 

   		end

        end 
    end
   #end
   pp pigeon
end

nyc_pigeon_organizer(pigeon_data)