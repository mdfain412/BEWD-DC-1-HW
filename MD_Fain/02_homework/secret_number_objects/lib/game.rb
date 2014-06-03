class Game
#		Welcome players and inform them of the game rules.

# 		Prompt the user to choose a number, verify if the user guessed correctly.
# 		If the user guesses incorrectly let them know if they were too high or too low
#		Monitor how many guesses the player has before the game is over.

#		Welcome players and inform them of the game rules.
#		Initialize the Player class.
# 		Initialize the Secret Number class.
# 		Prompt the user to choose a number, verify if the user guessed correctly.
# 		If the user guesses incorrectly let them know if they were too high or too low.
#		Monitor how many guesses the player has before the game is over.
#
# In creating your game, make sure it has arrays, hashes and all functionality is wrapped in methods.

	attr_accessor :secret_number, :person


#		Initialize the Player class.
# 		Initialize the Secret Number class.

	def initialize(person, secret_number)
		@person = person.name
		@secret_number = SecretNumber.secret_number
	end



end


