class House
	#declare the variable before you check for it
	@@largest = nil
	attr_accessor :name, :color, :year, :sqft

	#initializes automatically and then checks for the largest house
	def initialize(name, color, year, sqft)
		@name = name
		@color = color
		@year = year
		@sqft = sqft
		# @name, @color, @year, @sqft = name, color, year, sqft
		check_for_largest
	end

	#instance method, applies properites to only the object
	def hello_house
		puts "hello from #{@name}."
	end

	def to_s
		puts "#{@name} is #{@color}, built in #{@year} and is #{@sqft} square feet"
	end

	#class method
	def self.largest
		@@largest.name
	end

	#private
	private

	#want to check for the tallest house everytime a house gets added to the neighborhood
	#call the function that does a check for the tallest house
	#need a method that checks and a variable that holds the tallest house
	def check_for_largest
		if @@largest.nil? || @sqft > @@largest.sqft
			@@largest = self #this equals whatever instance of this object we just created
		end
	end

end

#md = House.new "MD's House", "brick", 2000, 5000
#the code above creates the object
#class methods are methods for your class
#instance methods are methods for your instances
