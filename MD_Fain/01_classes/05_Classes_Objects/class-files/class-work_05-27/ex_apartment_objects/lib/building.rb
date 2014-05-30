#Building Class
class Building

	attr_accessor :building_name, :building_address, :apartments, :unit_rented, :sqft, :bedrooms, :bathrooms

	def initialize(building_name, building_address)
		@building_name = building_name
		@building_address = building_address
		# @unit_rented = unit_rented
		# @sqft = sqft
		# @bedrooms = Apartment.apt_bedrooms
		# @bathrooms = Apartment.apt_bathrooms
		@apartments = []

	end

	def view_apartments 
		# puts Building.apartments
		@apartments.each do |apartments|
		puts "Apartment: #{@building_name}, Square feet: #{@sqft}, Bedrooms: #{@bedrooms}, Bathrooms: #{@bathrooms}"
	
		if unit_rented == 'y'
			puts "this unit is taken"
		elsif unit_rented == 'n'
			puts "this unit is available for rent"
		end

		end

	end

end
