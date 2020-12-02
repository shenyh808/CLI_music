class API 

    token = "BQBZRaD4znFzYJ4ljUqANypbNjDV7nnW-0LY8OS49aHzBY4Prd7qv2lhNLgF2HT1qJr8Ya6-YQBABYVZ_UK-T74gJzh8ciWuLzKew9-Pd55P_pGzxaIq_Bxkqvch7Bsdo5lVFosnyJu_nMMIJ6gL3zqSld-Q_TERAFocal7JKWMHj1c" #replace with your own token if you want the example to work

    def self.find_artist_by_name(name)

        uri = URI("https://api.spotify.com/v1/search?q=#{name}&type=artist")
        uri = URI(URL)
        req = Net::HTTP::Get.new(uri)
        req['Authorization'] = "Bearer #{token}" 
        http = Net::HTTP.new(uri.host, uri.port)
        http.use_ssl = (uri.scheme == "https")
        response = http.request(req)
        JSON(response.body)["artist"].each do |a| artist = Artist.find_or_create_by_id(id)
        
    end
end
