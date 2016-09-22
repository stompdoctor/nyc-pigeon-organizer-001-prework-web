require "pry"


def nyc_pigeon_organizer(pigeon_data)
  pigeon_hash = {}
  pigeon_data.each do |attribute, data|
  	data.each do |value, names|
  		names.each do |name|
  			if pigeon_hash[name] == nil
  				pigeon_hash[name] = {} 
  				pigeon_hash[name][attribute] = []
  			elsif pigeon_hash[name][attribute] == nil
  				pigeon_hash[name][attribute] = []
  			end
  			pigeon_hash[name][attribute] << value.to_s
  		end
  	end
  end
  pigeon_hash
end