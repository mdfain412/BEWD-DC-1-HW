# We're going to add a remote data source to pull in stories from Mashable, Digg, and reddit.
  # http://mashable.com/stories.json
  # http://digg.com/api/news/popular.json
  # http://www.reddit.com/.json
# These stories will also be upvoted based on our rules. No more user input!

# Pull the json, parse it and then make a new story hash out of each story(Title, Category, Upvotes)
# Add each story to an array and display your "Front page"
require 'json'
require 'rest_client'

def calc_upvotes(story)
	upvotes = 1
	if story.include? 'cats'
		upvotes *= 5
	elsif story.include? 'bacon'
		upvotes *= 8
	else story.include? 'food'
		upvotes *= 3
	end
end

puts "========================== FRONT PAGE ============================"

front_page = []

def get_mashable_data
	mashable = JSON.parse(RestClient.get 'http://mashable.com/stories.json')
	mashable['new'].each do |entry|
		title = entry['title']
		category = entry['channel']
		upvotes = calc_upvotes(title)
	puts "Title: #{title}, Category: #{category}, Total Upvotes: #{upvotes}"
end
end

def get_reddit_data
	reddit = JSON.parse(RestClient.get 'http://www.reddit.com/.json')
	reddit['data']['children'].each do |entry|
		title = entry['data']['title']
		category = entry['data']['subreddit']
		upvotes = calc_upvotes(title)
	puts "Title: #{title}, Category: #{category}, Total Upvotes: #{upvotes}"
end
end

def get_digg_data
	digg = JSON.parse(RestClient.get 'http://digg.com/api/news/popular.json')
	digg['data']['feed'].each do |entry|
		title = entry['content']['title_alt']
		category = entry['content']['domain']
		upvotes = calc_upvotes(title)
	puts "Title: #{title}, Category: #{category}, Total Upvotes: #{upvotes}"
end
end

get_mashable_data
get_reddit_data
get_digg_data

#Problems: upvotes resetting itself? it's not really total upvotes of it keeps starting at one in calc_upvotes
# need to get into one array

