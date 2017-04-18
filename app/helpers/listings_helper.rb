module ListingsHelper

	def get_home_types
		return ["apartment", "house", "villa", "dorm"]
	end

	def get_room_types
		return ["entire home", "private room", "shared room"]		
	end
		
		def get_maximum_guests
	return ["for 1 guest", "for 2 guest", "for 3 guest", "for 4 guest" ,"for 5 guest", "for 6 guest", "for 7 guest"]
		end
		
		def get_amenities
		return ["select","pool", "internet", "smoke detector", "kitchen", "heating", "Iron", "Wifi"]		
		end
end