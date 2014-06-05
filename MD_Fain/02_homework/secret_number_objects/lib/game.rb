

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

	attr_accessor :secret_number, :person, :guesses, :answer


#		Initialize the Player class.
# 		Initialize the Secret Number class.

	def initialize(person)
		@person = person.name
		# @secret_number = SecretNumber.new
		@secret_number = 8
		@guesses = 3
		@answer = answer
	end



	def start_game
		puts "the game has started"
		while @guesses != 0
			# puts "guess"
			# @guesses -= 1
			player_input
			break if @player_guess == @secret_number
		end
		# play_again(@answer)
		
	end

	def player_input
		puts "what is your guess?"
		@player_guess = gets.chomp.to_i
		@guesses -= 1
		evaluate(@player_guess).to_i
	end

	def evaluate(player_guess)
		if player_guess == secret_number
			puts "you're right, you're awesome!"
		elsif player_guess != secret_number && guesses > 0
			if player_guess < secret_number
			puts "too low, guess higher, you have #{guesses} guesses left"
			elsif player_guess > secret_number
			puts "too high, guess lower, you have #{guesses} guesses left"
			end
		else 
			puts "no more guesses, game over"
			puts "the secret number was #{secret_number}"
		end
	end


		# def play_again(answer)
		# 	puts "do you want to play again? 'y' or 'n'"
		# 	answer = gets.chomp
		# 	if answer == 'y'
		# 		start_game.new
		# 		guesses = 3
		# 		guesses -= 1
		# 	elsif answer == 'n'
		# 		puts "thanks for playing"
		# 	end
		# 	puts 'clear'
		# end

end


