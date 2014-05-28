# Teddit Contionals - Starter Code.

# Let's add a new Teddit feature. Upvotes!
# Complete the application below. 
# Where you see comments (lines that begin with #) replace it with code so that the program works.

upvotes = 4

def get_input
  #Get input from the user.
  gets.chomp
end

def calculate_upvotes(story, category, upvotes)
	# Write code so that:
		# If the Story is about cats multiply the upvotes by 5
		if category == 'cats'
			upvotes *= 5
		elsif category == 'bacon'
			upvotes *= 8
		elsif category == 'Food'
			upvotes *= 5
		else 
			abort 'try again, we don\'t like that'
		end
		return upvotes
		# This is good! Do you know how you'd have to modify the code above if you wanted
		# to apply multiple upvotes if the category contains multiple key words?
		# i.e. category == "My cats love bacon"
	
		# If the Story is about bacon multiply the upvotes by 8
		# If the Story is about Food it gets 3 times the upvotes.
	#For example:
	# "Cats frolic despite tuna shortage" should give you 5 times the upvotes!
end

puts "Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!"
puts "Please enter a News story:"
story = get_input
puts "Please give it a category:"
category = get_input # Will your program still work if the user enters "Cats" or "Bacon" ? Notice the capitalization
upvotes = calculate_upvotes(story, category, upvotes)
puts "New story added! #{story}, Category: #{category.capitalize}, Current Upvotes: #{upvotes}"