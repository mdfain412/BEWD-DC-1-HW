###############################################################################
#
# Back-End Web Development - Homework #1
#
# Secret Number is a game you will build in two parts.
# The purpose of the game is to have players guess a secret number from 1-10.
#
# Read the instructions below.
# This exercise will test your knowledge of Variables and Conditionals.
#
###############################################################################
#
# We're ready to program! To practice our Ruby skills lets create a secret number game. 
# In this game players have three tries to guess a secret number between 1 and 10. 
#
# Here are some guidelines to building your game:
#
#	Intros
# 	-	Welcome the player to your game. Let them know who created the game. 
#	  -	Ask for the player's name then personally greet them by printing to the screen, "Hi player_name!"
#	  -	Any good game will communicate the rules. Let the player know they must guess a number between 1 and 10 
#		and that they only have 3 tries to do so.
#
#	Functionality: 
#	 -	Hard code the secret number. Make it a random number between 1 and 10.
#	 - 	Ask the user for their guess.
#	 -	Verify if they were correct. If the player guesses correctly they win the game they should be congratulated and the game should end.
#	 -	If they guess incorrectly, give the player some direction. If they guess too high let them know, if they guess too low, let them know.
#	 - 	Don't forget to let your players know how many guesses they have left. Your game should say something like
#		  "You have X many guesses before the game is over enter a another number"
#	 -	If they don't guess correctly after 3 tries, print that the Player lost and the game is over. Also let them know what the `secret_number` was.
#
# Make sure to add helpful comments to your code to document what each section does.
# 
# Remember to cast input from the Player into the appropriate data type.
#
###############################################################################

puts 'Welcome to the game!'

puts 'Dearest player, what is your name?'
player_name = gets.chomp
puts "Hi #{player_name}! In this game, you will win by guessing the correct number. You have three tries to guess a number between 1 and 10."

secret_number = rand(1..10) #assigns the secret number
tries = 3

while tries > 0
	puts "What is your guess, #{player_name}?"
	guess = gets #asks for player's guess
	if guess.to_i == secret_number.to_i
		puts "Congrats, #{player_name}. You guessed correctly!"
		break
	else 
		tries -= 1 #decreases the amount of tries left
		if tries >= 2 || tries == 0 #this makes sure the printed results is grammatically correct
			puts "That\'s incorrect. You have #{tries} attempts left."
		else
			puts "That\'s incorrect. You have #{tries} attempt left."
		end
		if guess.to_i < secret_number.to_i #this gives a hint to the player
			puts "You need to guess higher!"
		else
			puts "You need to guess lower!"
		end
	end

	if tries == 0 # limits the number of guesses
		puts "The game is over. The Secret Number is #{secret_number}."
	end
end




