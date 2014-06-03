class Game
#		Welcome players and inform them of the game rules.

# 		Prompt the user to choose a number, verify if the user guessed correctly.
# 		If the user guesses incorrectly let them know if they were too high or too low
#		Monitor how many guesses the player has before the game is over.

	attr_accessor :secret_number


#		Initialize the Player class.
# 		Initialize the Secret Number class.

	def initialize(player, secret_number)
		@player = player
		@secret_number = secret_number
	end

	def choose_a_number(secret_number)

	end	

end


