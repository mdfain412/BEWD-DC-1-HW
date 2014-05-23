# Step 1: Working with Arrays and Hashes

# Copy your solution from conditional_teddit.rb.
# Create an empty stories array. This will be used to hold all stories we capture.
# Users enter the story as they do now, but it gets put in a hash instead.
# Update any reference to the story (upvotes, category and title)
# Your story hash should look like the one below:
# { title: "Monkeys thank mayor for flounder tooth necklace", category: "Teeth", upvotes: 1 }
# Add the hash to an array called stories and print "Story: Monkeys thank mayor for flounder tooth necklace, Category: (Teeth), Current Upvotes: 1"
# Using the stories array
# Test your cat, bacon, and food upvote conditional logic.
#
# Step 2: Adding Loops
# Use a loop, so that your program continues to ask a user for stories until they chose to quit. ("Would you like to add another story? Enter 'y' or 'n'")

# Once the user is finished with entering their stories, use .each to print each story in the stories array. 


def get_input
  #Get input from the user.
  gets.chomp
end

def calculate_upvotes(story, category)
	upvotes = 1
	if story.downcase.include? 'cat'
		upvotes *= 5
	elsif story.downcase.include? 'bacon'
		upvotes *= 8
	end

	if category.downcase == 'food'
		upvotes *= 3
	end

	upvotes
end


def show_all_stories(stories)
	stories.each do |story|
		puts "Story: #{story[:title]}, Category: #{story[:category]}, Current Upvotes: #{story[:upvotes]}"
	end
end

#array outside of loop to save hashes
stories = []

puts "Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!"
answer = "y"

while answer == "y"
	story = {}
	puts "Please enter a News story: "
	story[:title] = get_input

	puts "Please give it a category"
	story[:category] = get_input

	story[:upvotes] = calculate_upvotes(story[:title], story[:category])

	puts "New story added! #{story[:title]}, Category: #{story[:category]}, Current Upvotes: #{story[:upvotes]}"

	#append to array
	stories << story 

	puts "Would you like to add another story? Enter 'y' or 'n' "
	answer = get_input.strip.downcase

	# if answer != 'y' || answer != 'n'
	# 	puts "Please enter a valaid answer ('y' or 'n')"
	# 	answer = get_input.strip.downcase
	# end
end

show_all_stories stories
#print out the stories, this method was defined above

#consistent keys - store our stories in a hash (title, category, upvotes)
#storing all the stories in an array, we don't know what to reference each story by, thinking of the story as one item with those elements
#hashes are for structure
#arrays are for a number of items - no certain structure, don't know how the information will be structured



# puts "Please enter a News story:"
# story = get_input
# puts "Please give it a category:"
# category = get_input
# upvotes = calculate_upvotes(story, category)
# puts "New story added! #{story}, Category: #{category.capitalize}, Current Upvotes: #{upvotes}"



# def calculate_upvotes(story, category, upvotes)
# 	# Write code so that:
# 		# If the Story is about cats multiply the upvotes by 5
# 		if category == 'cats'
# 			upvotes *= 5
# 		elsif category == 'bacon'
# 			upvotes *= 8
# 		elsif category == 'Food'
# 			upvotes *= 5
# 		else 
# 			abort 'try again, we don\'t like that'
# 		end
# 		return upvotes
# 		# If the Story is about bacon multiply the upvotes by 8
# 		# If the Story is about Food it gets 3 times the upvotes.
# 	#For example:
# 	# "Cats frolic despite tuna shortage" should give you 5 times the upvotes!
# end
# Once the user is finished with entering their stories, use .each to print each story in the stories array.
#
#

# def show_message(message)
#   puts message
# end

# def get_input
#   gets.strip
# end

# def show_new_story_notification(story)
#   show_message("New story added! #{story[:title]}, Category: #{story[:category].capitalize}, Current Upvotes: #{story[:upvotes]}")
# end

# def calculate_upvotes(story)
#   story[:upvotes] = 1

#   if story[:title].downcase.include? 'cat'
#     story[:upvotes] *= 5
#   elsif story[:title].downcase.include? 'bacon'
#     story[:upvotes] *= 8
#   end

#   if story[:category].downcase == "food"
#     story[:upvotes] *= 3
#   end
# end

# def show_all_stories(stories)
#   stories.each do |story|
#     show_message "Story: #{story[:title]}, Category: #{story[:category]}, Current Upvotes: #{story[:upvotes]}"
#   end
# end

# stories = []

# show_message("Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!")
# answer = "y"

# while answer == "y"
#   story = {}

#   show_message("Please enter a News story:")
#   story[:title] = get_input

#   show_message("Please give it a category:")
#   story[:category] = get_input

#   calculate_upvotes(story)

#   stories << story
#   show_new_story_notification(story)

#   show_message("Would you like to add another story? Enter 'y' or 'n'")
#   answer = get_input.strip.downcase
# end

# show_all_stories stories

