#Explaining classes, objects, attr_accessor & load paths. 

class Apartment
	attr_accessor :name, :rent, :sqft, :num_bedrooms, :num_bathrooms, :renters

	def initialize (name, rent, sqft, num_bedrooms, num_bathrooms)
		@name = name
		@rent = rent
		@sqft = sqft
		@num_bedrooms = num_bedrooms
		@num_bathrooms = num_bathrooms
		@renters = []
	end

	#instance method, asking it in the form of a question
	def is_occupied?
		# @renters.empty?
		@renters.any?
	end

	#instance method
	def to_s 
		"#{@name} is #{@sqft} square feet and is currently occupied by #{@renters.count} residents."
	end

	#this will not work because it only applies to class Apartment
	puts 5.to_s


end

alex_apt = Apartment.new "Alex's Apartment", 1, 3000, 1, 1
# alex_apt.renters = ["Alex", "Alex's cat"]

if alex_apt.is_occupied?
	puts "This apartment is not for rent."
else
	puts alex_apt
	puts "This apartment is available, as your broker for details."
end






=begin
Steps
1) name the class
2) attr_accessor and pass symbols
3) initialize and pass methods, then define the instance methods

The difference between attr_accessor symbols and def initialize 
-they are both instance variables, but when they are passed in the attr_accessor, they are passed in as symobls 

4)

=end

#can set multiple classes in one file
#good practice to have each class in different files, have a main file that ties in all the classes, normally called main.rb
=begin
	
require_relative 'lib/apartments.rb'
require_relative 'lib/building.rb'
require_relative 'lib/person.rb'

=end