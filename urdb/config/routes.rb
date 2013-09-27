Urdb::Application.routes.draw do

root "movies#show_all"

get "/movies"           =>  "movies#show_all"
get "/movies/:id"       =>  "movies#show", as: "movie"
get "/movies/:title"    =>  "movies#show" 

end
