#ask for user to  enter a word
#make a web request to wordnikAPI to get definition of word


require "http"


puts "Please enter a word."
puts "Enter q to quit."
word = gets.chomp

response = HTTP.get("https://api.wordnik.com/v4/word.json/#{word}/definitions?limit=200&includeRelated=false&useCanonical=false&includeTags=false&api_key=64e90a58d89a8e7f3f000001fe809d0cd55d32cb45b9f117e")

semantics = HTTP.get("https://api.wordnik.com/v4/word.json/#{word}/pronunciations?useCanonical=false&limit=50&api_key=64e90a58d89a8e7f3f000001fe809d0cd55d32cb45b9f117e")



definition_data = response.parse(:json)
definition = definition_data[0]['text']
top_example = 
pronounce = semantics6

puts "#{word} has a definition of: #{definition}. Some examples include #{top_example}. #{pronounce} is how you pronounce #{word}"





