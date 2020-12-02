require 'net/http'
require 'open-uri'
require 'json'
require 'pry'

auth = {"Authorization": "Bearer BQAFL4dhoW0_wC9DJrPfwAXjM4RWUDfSsDWPcJ0HgRZ9bNIpO6b4HfFy8W1vrUvEt45xgroPcQlAAUdml65k4udSK9MZQMO74Ldh2qV7P4eyrh6XOeGTvP931Ro6fD-1oEZUK0Xa0Hpcp6aJkdQlUGdwCrB5iACHHTpkzyMIyZjvyQU"
} 

# token = "BQAFL4dhoW0_wC9DJrPfwAXjM4RWUDfSsDWPcJ0HgRZ9bNIpO6b4HfFy8W1vrUvEt45xgroPcQlAAUdml65k4udSK9MZQMO74Ldh2qV7P4eyrh6XOeGTvP931Ro6fD-1oEZUK0Xa0Hpcp6aJkdQlUGdwCrB5iACHHTpkzyMIyZjvyQU"
# uri = URI('https://api.spotify.com/v1/artists/1vCWHaC5f2uS3yhpwWbIA6/albums?album_type=SINGLE&offset=20&limit=10')
# req = Net::HTTP::Get.new(uri)
# req['Autorization'] = "Bearer #{token}"
# # req['Authorization'] = "Bearer BQAFL4dhoW0_wC9DJrPfwAXjM4RWUDfSsDWPcJ0HgRZ9bNIpO6b4HfFy8W1vrUvEt45xgroPcQlAAUdml65k4udSK9MZQMO74Ldh2qV7P4eyrh6XOeGTvP931Ro6fD-1oEZUK0Xa0Hpcp6aJkdQlUGdwCrB5iACHHTpkzyMIyZjvyQU"
# http = Net::HTTP.new(uri.host, uri.port)
# http.use_ssl = (uri.scheme == "https")
# response = http.request(req)
# puts = response.body

token = "BQBZRaD4znFzYJ4ljUqANypbNjDV7nnW-0LY8OS49aHzBY4Prd7qv2lhNLgF2HT1qJr8Ya6-YQBABYVZ_UK-T74gJzh8ciWuLzKew9-Pd55P_pGzxaIq_Bxkqvch7Bsdo5lVFosnyJu_nMMIJ6gL3zqSld-Q_TERAFocal7JKWMHj1c" #replace with your own token if you want the example to work
#version 1

def self.find_artist_by_name(name)

    uri = URI("https://api.spotify.com/v1/search?q=#{name}&type=artist")
    uri = URI(URL)
    req = Net::HTTP::Get.new(uri)
    req['Authorization'] = "Bearer #{token}" 
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = (uri.scheme == "https")
    response = http.request(req)
    puts JSON(response.body)["artist"].each do |a| artist= Artist.find_or_create_by_id(id)
    end
end

binding.pry




# BASE_URL = "https://api.spotify.com/v1/artists/1vCWHaC5f2uS3yhpwWbIA6/albums"
# extention = "?album_type=SINGLE&offset=20&limit=10api_key=#{ENV['API_key']}"

# class API

#     URL = http://open.spotify.com/track/6rqhFgbbKwnb9MLmUQDhG6

#     def get_programs
#         uri = URI.parse(URL)
#         response = Net::HTTP.get_response(uri)
#         response.body
#       end
    
#     end
# end