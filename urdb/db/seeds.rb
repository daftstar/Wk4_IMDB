# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# First generate a new database 
#
# rails generate model DBName column_name:type column_name:type column_name:type

# rails generate model Movie title:string youtube_trailer_id:string giphyID:string description:text




puts "clearing data in the Movie table"

Movie.destroy_all

puts "adding dummy data for Movie table"

movies = [
	{
		title: "Shaun of the Dead",
		youtube_trailer_id: "z-lmF5DAssU",
		giphyID: "mAYym8ui14nuM",
		description: "A man decides to turn his moribund life around by winning back his ex-girlfriend, reconciling his relationship with his mother, and dealing with an entire community that has returned from the dead to eat the living."
	},
	{
		title: "The Bourne Supremacy",
		youtube_trailer_id: "R571pvOxNSY",
		giphyID: "q1L8lOI01EtrO",
		description: "When Jason Bourne is framed for a botched CIA operation he is forced to take up his former life as a trained assassin to survive."
	},	
	{
		title: "In Bruges ",
		youtube_trailer_id: "Ibwe9nmssCw",
		giphyID: "Z57CXxhePbTlS",
		description: "Guilt-stricken after a job gone wrong, hitman Ray and his partner await orders from their ruthless boss in Bruges, Belgium, the last place in the world Ray wants to be."
	},
	{
		title: "The Dark Knight",
		youtube_trailer_id: "g8evyE9TuYk",
		giphyID: "N9kZiAZw0odhK",
		description: "When Batman, Gordon and Harvey Dent launch an assault on the mob, they let the clown out of the box, the Joker, bent on turning Gotham on itself and bringing any heroes down to his level."
	}	
]

movies.each do |movie|
	Movie.create(
		title: movie[:title], 
		youtube_trailer_id: movie[:youtube_trailer_id],
		giphyID: movie[:giphyID],
		description: movie[:description])
end

puts "added dummy data for Movie table"