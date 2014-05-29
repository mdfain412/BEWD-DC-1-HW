# We're going to add a remote data source to pull in stories from Mashable, Digg, and reddit.
  # http://mashable.com/stories.json
  # http://digg.com/api/news/popular.json
  # http://www.reddit.com/.json
# These stories will also be upvoted based on our rules. No more user input!

# Pull the json, parse it and then make a new story hash out of each story(Title, Category, Upvotes)
# Add each story to an array and display your "Front page"
require 'rest-client'
my_array= []

def calculate_upvotes(story, category)
	upvotes = 1

	# Write code so that:
	# If the Story is about cats multiply the upvotes by 5
	if story.include?("cats")  || story.include?("Cats")
		upvotes = 5 * upvotes
	end


	# If the Story is about bacon multiply the upvotes by 8
	if story.include?("bacon") || story.include?("Bacon")
		upvotes = 8 * upvotes 
	end

	# If the Story is about Food it gets 3 times the upvotes.
	if story.include?("food") || story.include?("Food")
		upvotes = 3 * upvotes
	end

	#For example:
	# "Cats frolic despite tuna shortage" should give you 5 times the upvotes!
	upvotes 
end




def get_digg_stories(any_array) 
	digg_data = JSON.parse(RestClient.get 'http://digg.com/api/news/popular.json')
	digg_data['data']['feed'].each do |story|
		any_array << { 
			:title => story['content']['title'],
		    :category => story['content']['tags'].first['display'],
		    :upvotes => calculate_upvotes(story['content']['title'], story['content']['tags'].first['display'])
		}
	end
end

def get_mashable_stories(any_array)
	mashable_data = JSON.parse(RestClient.get 'http://mashable.com/stories.json')
	mashable_data['new'].each do |story|
		any_array << { 
			:title => story['title'],
			:category => story['channel'],
			:upvotes => calculate_upvotes(story['title'], story['channel'])
		}

	end
end	

def get_reddit_stories(any_array)
	reddit_data = JSON.parse(RestClient.get 'http://www.reddit.com/.json')
	reddit_data['data']['children'].each do |story|
    any_array << { 
    	:title => story['data']['title'],
    	:category => story['data']['subreddit'],
    	:upvotes => calculate_upvotes(story['data']['title'], story['data']['subreddit'])
      }
	end
end	

get_digg_stories(my_array)
get_mashable_stories(my_array)
get_reddit_stories(my_array)

my_array.each do |story_hash|
	puts 'Title: ' + story_hash[:title] 
	puts 'Category: ' + story_hash[:category]
	puts 'Upvotes: ' + story_hash[:upvotes].to_s
	puts "----------------------------------"

end




