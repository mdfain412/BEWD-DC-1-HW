

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

	attr_accessor :secret_number, :person, :player_guess, :guesses


#		Initialize the Player class.
# 		Initialize the Secret Number class.

	def initialize(person)
		@person = person.name
		@secret_number = SecretNumber.new
		@guesses = 3
	end



	def start_game
		puts "the game has started"
		while @guesses != 0
			puts "guess"
			@guesses -= 1
			player_input
		end
		
	end

	def player_input
		puts "what is your guess?"
		@player_guess = gets.chomp.to_i
		evaluate(@player_guess)
	end

	def evaluate(player_guess)
		if player_guess == secret_number
			puts "you're right, you're awesome!"
		elsif player_guess != secret_number && guesses > 0

			if player_guess < @secret_number
        		puts "Higher, you have #{guesses} guesses left"
      		elsif player_guess > @secret_number
        		puts "Lower, you have #{guesses} guesses left"
      		end
      	else
      		puts "Game Over! The secret number was #{@secret_number}"
		end	
	end

			# puts "what is your guess?"
			# player_guess = gets.chomp

			# if player_guess != secret_number
			# 	puts "you are wrong"
			# end


end


