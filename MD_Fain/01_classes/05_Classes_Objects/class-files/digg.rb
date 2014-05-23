require 'rest_client'
require 'json'

response = JSON.parse(RestClient.get 'http://digg.com/api/news/popular.json')
response['data']['feed'].each do |story|
	puts story['content']['title']
	break
end