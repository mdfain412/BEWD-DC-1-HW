class SecretNumber
#this class will generate our secret number for us
#This class should initiate an array of numbers that range between 1 - 10.
#Use a method from the array class to select a random element from that array. This random number will be the secret number.
#have to use rand()
#This way the secret number is also a secret to you.

# secret_number = rand(1..10)

	attr_accessor :secret_number, :number

	def initialize
		@number = [1,2,3,4,5,6,7,8,9,10]
		@secret_number = number.sample
	end

end
