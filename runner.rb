require "http"
system "clear"


puts "please select a movie id to continue (1-10), all to show all movies"
input = gets.chomp

response = HTTP.get("http://localhost:3000/api/movie?id=#{input}")
p response.parse