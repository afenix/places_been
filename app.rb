require("sinatra")
require("sinatra/reloader")
also_reload("lib/**/*.rb")
require("./lib/place")


get('/') do
  @places = Place.all()
  erb(:index)
end

post('/locations') do
  locations = params.fetch("places")
  place_locations = Place.new(locations)
  place_locations.save()
  erb(:locations)
end

post('/') do
  @places = Place.clear()
  erb(:index)
end
