require('sinatra')
require('sinatra/contrib/all')

require_relative('./models/wordformatter')
require('json')

get('/address') do
  content_type(:json)
  
  result = {
    house: "32/4",
    street: "Albion Road",
    city: "Edinburgh",
    postcode: "EH7 5QW"
  }
  
  return result.to_json()
end

get('/') do
  erb(:home)
end