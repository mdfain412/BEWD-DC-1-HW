###############################################################################
#
$:.unshift (File.dirname(__FILE__))
require 'lib/game'
require 'lib/person'
require 'lib/secret_number'

# Introduction to Ruby on Rails
#
# Object Oriented Secret Number
#
# Read the hints below and complete this file. This Lab
# is to practice your knowledge of object oriented programming.
#
###############################################################################
# Lets create an Object Oriented version of our Secret Number Game.
#
# Your updated game should have 4 classes (Main, SecretNumber, Game and Player)
#
# Below is a description of each class and some guidelines for each.
#
# Main
#	The main class is where the game begins. This class should tell the player who made it.
#	Ask the player for their name and instantiate the Game class.

author = 'Mary Dorothy'
number = [1,2,3,4,5,6,7,8,9,10]
# guesses_left = 3

# def get_input(player_name)
# 	gets.chomp.capitalize
# end

puts "Welcome to the game, my name is #{author} and I created the game"
puts "what's your name?"
name = gets.chomp.capitalize
person = Person.new(name)
puts "Hi #{name}, The rules of the game are simple. You have to guess a number between 1 and 10 and you only have three guesses."
# puts name
secret_number = number.sample
puts "#{secret_number} is the secret number"

# new_game = Game.new

# SecretNumber
#   This class should initiate an array of numbers that range between 1 - 10.
#   Use a method from the array class to select a random element from that array. This random number will be the secret number.
#   This way the secret number is also a secret to you.
#
# Player
#  Should initialize the player's name.
#
# Game
#	This class holds most of the game logic and should:
#		Welcome players and inform them of the game rules.
#		Initialize the Player class.
# 		Initialize the Secret Number class.
# 		Prompt the user to choose a number, verify if the user guessed correctly.
# 		If the user guesses incorrectly let them know if they were too high or too low.
#		Monitor how many guesses the player has before the game is over.
#
# In creating your game, make sure it has arrays, hashes and all functionality is wrapped in methods.
# Add helpful comments to your code to document what each section does.
#
# Tips: Copy paste your code from homework 1 where necessary.




# put code here print a welcome message for your user

# put code here ask the user for their name, and save it

# put code here to create a new game, and start it